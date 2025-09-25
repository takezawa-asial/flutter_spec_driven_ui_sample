// order.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order.freezed.dart';
part 'order.g.dart';

/// ------------------------------
/// 仕様の語彙（enum）
/// ------------------------------
@JsonEnum(alwaysCreate: true)
enum OrderType { normal, subscription, preorder }

@JsonEnum(alwaysCreate: true)
enum Shipment { home, pickup }

@JsonEnum(alwaysCreate: true)
enum PaymentMethod { card, cod, bank }

@JsonEnum(alwaysCreate: true)
enum Stock { inStock, limited, soldOut }

/// ------------------------------
/// クーポン：freezedのunionで型安全に
///   - none          … クーポンなし
///   - percentOff    … ％割引（0-100）
///   - fixedOff      … 定額割引（金額）
/// ------------------------------
@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.snake)
abstract class Coupon with _$Coupon {
  const Coupon._();

  const factory Coupon.none() = _CouponNone;

  const factory Coupon.percentOff({
    /// 例: 15% → 15.0
    @Default(0.0) double percent,
  }) = _CouponPercentOff;

  const factory Coupon.fixedOff({
    /// 通貨単位は上位層で決める（ここでは数値のみ）
    @Default(0.0) double amount,
  }) = _CouponFixedOff;

  factory Coupon.fromJson(Map<String, dynamic> json) => _$CouponFromJson(json);

  bool get isNone => maybeWhen(
    orElse: () => true,
    none: () => true,
    percentOff: (_) => false,
    fixedOff: (_) => false,
  );
}

/// ------------------------------
/// 住所（自宅配送用）
/// ------------------------------
@freezed
abstract class Address with _$Address {
  const factory Address({
    required String postalCode,
    required String line1,
    String? line2,
    String? prefecture,
    String? city,
    String? recipient,
    String? phone,
  }) = _Address;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
}

/// ------------------------------
/// 店舗受取情報
/// ------------------------------
@freezed
abstract class PickupStore with _$PickupStore {
  const factory PickupStore({required String storeCode, String? name}) =
      _PickupStore;

  factory PickupStore.fromJson(Map<String, dynamic> json) =>
      _$PickupStoreFromJson(json);
}

/// ------------------------------
/// 注文明細
/// ------------------------------
@freezed
abstract class OrderItem with _$OrderItem {
  const OrderItem._();

  const factory OrderItem({
    required String sku,
    required String name,

    /// 単価（税抜/税込は上位で統一）
    required int unitPrice,
    @Default(1) int quantity,

    /// 在庫状態（予約商品の場合は inStock 相当でも予約扱いにできる）
    @Default(Stock.inStock) Stock stock,
  }) = _OrderItem;

  factory OrderItem.fromJson(Map<String, dynamic> json) =>
      _$OrderItemFromJson(json);

  int get subtotal => unitPrice * quantity;

  bool get isSoldOut => stock == Stock.soldOut;
  bool get isLimited => stock == Stock.limited;
}

/// ------------------------------
/// 注文（集約ルート）
/// ------------------------------
@freezed
abstract class Order with _$Order {
  const Order._();

  const factory Order({
    required String id,
    @Default(OrderType.normal) OrderType orderType,
    required List<OrderItem> items,

    /// 配送方法
    @Default(Shipment.home) Shipment shipment,

    /// 支払い方法（選択中）
    @Default(PaymentMethod.card) PaymentMethod paymentMethod,

    /// クーポン（なし含む）
    @Default(Coupon.none()) Coupon coupon,

    /// 自宅配送なら必須、店舗受取ならnull
    Address? shippingAddress,

    /// 店舗受取なら必須、自宅配送ならnull
    PickupStore? pickupStore,

    /// 予約フラグ（商品ごとに扱うなら items 側の特性を集計してもOK）
    @Default(false) bool isPreorder,
  }) = _Order;

  factory Order.fromJson(Map<String, dynamic> json) => _$OrderFromJson(json);

  /// ------------------------------
  /// 集計系
  /// ------------------------------
  int get totalBeforeDiscount =>
      items.fold<int>(0, (sum, i) => sum + i.subtotal);

  int get discountAmount {
    return coupon.when(
      none: () => 0,
      percentOff: (percent) {
        final p = percent.clamp(0, 100);
        return ((totalBeforeDiscount * (p / 100))).floor();
      },
      fixedOff: (amount) {
        final a = amount < 0 ? 0 : amount;
        return a.floor().clamp(0, totalBeforeDiscount);
      },
    );
  }

  int get totalAfterDiscount =>
      (totalBeforeDiscount - discountAmount).clamp(0, 1 << 31);

  /// ------------------------------
  /// ビジネスルールに基づく可否・警告
  ///   UI層が使いやすい“結論”を返す
  /// ------------------------------

  /// 在庫状況から購入可否を判定
  bool get isSoldOut =>
      items.any((i) => i.isSoldOut) && orderType != OrderType.preorder;

  /// 定期購入はカードのみ
  bool get subscriptionRequiresCard =>
      orderType == OrderType.subscription &&
      paymentMethod != PaymentMethod.card;

  /// 予約は代引不可（例）
  bool get preorderDisallowCod =>
      orderType == OrderType.preorder && paymentMethod == PaymentMethod.cod;

  /// 在庫が“残りわずか”かつ％OFFのときは銀行振込を禁止（例：スピード要件）
  bool get limitedStockWithPercentOffDisallowBank {
    final hasLimited = items.any((i) => i.isLimited);
    final isPercent = coupon.maybeWhen(
      percentOff: (_) => true,
      orElse: () => false,
    );
    return hasLimited && isPercent && paymentMethod == PaymentMethod.bank;
  }

  /// 配送方式による必須項目の妥当性
  bool get isShipmentInfoValid {
    return shipment == Shipment.home
        ? shippingAddress != null
        : pickupStore != null;
  }

  /// UIに出す“無効理由”を列挙（空なら購入可能）
  List<String> get validationErrors {
    final errors = <String>[];

    if (isSoldOut) {
      errors.add('在庫なしのため購入できません');
    }
    if (subscriptionRequiresCard) {
      errors.add('定期購入はクレジットカードのみです');
    }
    if (preorderDisallowCod) {
      errors.add('予約商品は代金引換を利用できません');
    }
    if (limitedStockWithPercentOffDisallowBank) {
      errors.add('在庫わずか＋％OFFのため銀行振込は利用できません');
    }
    if (!isShipmentInfoValid) {
      errors.add(shipment == Shipment.home ? '配送先住所が未入力です' : '受取店舗が未選択です');
    }
    if (totalAfterDiscount <= 0 && totalBeforeDiscount > 0) {
      errors.add('割引額が合計金額を超えています');
    }
    return errors;
  }

  bool get canBuy => validationErrors.isEmpty;

  /// ViewModel用の“支払い手段の有効/無効”を返す簡易ヘルパ
  PaymentAvailability get paymentAvailability {
    final card = true;
    final cod =
        !(orderType == OrderType.preorder ||
            orderType == OrderType.subscription);
    final bank =
        !(limitedStockWithPercentOffDisallowBank ||
            orderType == OrderType.subscription);
    return PaymentAvailability(card: card, cod: cod, bank: bank);
  }
}

/// UI層が使うためのシンプルな可用性DTO（freezed不要）
class PaymentAvailability {
  final bool card;
  final bool cod;
  final bool bank;
  const PaymentAvailability({
    required this.card,
    required this.cod,
    required this.bank,
  });
}
