// order_form_state_notifier.dart
import 'package:flutter_spec_driven_ui_sample/features/order/domain/model/order.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/ui/state/order_form_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_form_state_notifier.g.dart';

@riverpod
class OrderFormStateNotifier extends _$OrderFormStateNotifier {
  @override
  Future<OrderFormState> build(String id) async {
    final order = await fetch(id);
    return OrderFormState(order: order);
  }

  /// モックで Order を生成し、state を更新して返す
  Future<Order> fetch(String orderId) async {
    // APIから取得を想定
    await Future<void>.delayed(const Duration(milliseconds: 400));

    // ------------------------------------------------------------
    // article.md の表に対応するサンプル Order（コメントアウト）
    //
    // ケース1: 通常 × 在庫あり × 自宅 × クーポンなし（すべて選択可）
    // final order = Order(
    //   id: 'ORD-$orderId-1',
    //   orderType: OrderType.normal,
    //   shipment: Shipment.home,
    //   coupon: const Coupon.none(),
    //   paymentMethod: PaymentMethod.card,
    //   items: const [
    //     OrderItem(
    //       sku: 'SKU-TSHIRT',
    //       name: 'T-Shirt',
    //       unitPrice: 2000,
    //       quantity: 1,
    //       stock: Stock.inStock,
    //     ),
    //   ],
    //   shippingAddress: Address(postalCode: '100-0001', line1: '千代田区千代田1-1'),
    // );
    //
    // ケース2: 通常 × 残りわずか × 自宅 × ％割引（銀行振込は選択不可）
    final order = Order(
      id: 'ORD-$orderId-2',
      orderType: OrderType.normal,
      shipment: Shipment.home,
      coupon: const Coupon.percentOff(percent: 15),
      // 銀行振込は選択不可のため初期値はカードに設定
      paymentMethod: PaymentMethod.card,
      items: const [
        OrderItem(
          sku: 'SKU-MUG',
          name: 'Mug',
          unitPrice: 1200,
          quantity: 1,
          stock: Stock.limited,
        ),
      ],
      shippingAddress: Address(postalCode: '150-0001', line1: '渋谷区神南1-1-1'),
    );
    //
    // ケース3: 通常 × 在庫なし × 自宅 × クーポンなし（購入不可）
    // final order = Order(
    //   id: 'ORD-$orderId-3',
    //   orderType: OrderType.normal,
    //   shipment: Shipment.home,
    //   coupon: const Coupon.none(),
    //   paymentMethod: PaymentMethod.card,
    //   items: const [
    //     OrderItem(
    //       sku: 'SKU-TSHIRT',
    //       name: 'T-Shirt',
    //       unitPrice: 2000,
    //       quantity: 1,
    //       stock: Stock.soldOut,
    //     ),
    //   ],
    //   shippingAddress: Address(postalCode: '160-0022', line1: '新宿区新宿1-1-1'),
    // );

    // ケース4: 定期 × 在庫あり × 自宅 × クーポンなし（カードのみ選択可）
    // final order = Order(
    //   id: 'ORD-$orderId-4',
    //   orderType: OrderType.subscription,
    //   shipment: Shipment.home,
    //   coupon: const Coupon.none(),
    //   paymentMethod: PaymentMethod.card, // 他を選ぶと不可
    //   items: const [
    //     OrderItem(
    //       sku: 'SKU-COFFEE',
    //       name: 'Coffee Beans',
    //       unitPrice: 1500,
    //       quantity: 2,
    //       stock: Stock.inStock,
    //     ),
    //   ],
    //   shippingAddress: Address(postalCode: '135-0061', line1: '江東区豊洲1-1-1'),
    // );
    //
    // ケース5: 予約 × （予約扱い） × 店舗受取 × 定額割引（代引不可／他は可）
    // final order = Order(
    //   id: 'ORD-$orderId-5',
    //   orderType: OrderType.preorder,
    //   shipment: Shipment.pickup,
    //   coupon: const Coupon.fixedOff(amount: 500),
    //   paymentMethod: PaymentMethod.bank, // 代金引換は不可
    //   items: const [
    //     OrderItem(
    //       sku: 'SKU-GAME',
    //       name: 'New Game',
    //       unitPrice: 6800,
    //       quantity: 1,
    //     ),
    //   ],
    //   pickupStore: PickupStore(storeCode: 'STORE-001', name: '渋谷店'),
    // );
    //
    // ケース6: 通常 × 在庫あり × 店舗受取 × クーポンなし（すべて選択可）
    // final order = Order(
    //   id: 'ORD-$orderId-6',
    //   orderType: OrderType.normal,
    //   shipment: Shipment.pickup,
    //   coupon: const Coupon.none(),
    //   paymentMethod: PaymentMethod.cod,
    //   items: const [
    //     OrderItem(sku: 'SKU-MUG', name: 'Mug', unitPrice: 1200, quantity: 1),
    //   ],
    //   pickupStore: PickupStore(storeCode: 'STORE-002', name: '新宿店'),
    // );
    //
    // ケース7: 予約 × （予約扱い） × 自宅 × ％割引（方針によりカードのみの可能性）
    // final order = Order(
    //   id: 'ORD-$orderId-7',
    //   orderType: OrderType.preorder,
    //   shipment: Shipment.home,
    //   coupon: const Coupon.percentOff(percent: 10),
    //   paymentMethod: PaymentMethod.card, // 方針によってはカード限定
    //   items: const [
    //     OrderItem(
    //       sku: 'SKU-ALBUM',
    //       name: 'Limited Album',
    //       unitPrice: 3200,
    //       quantity: 1,
    //     ),
    //   ],
    //   shippingAddress: Address(postalCode: '108-0075', line1: '港区港南1-1-1'),
    // );
    // ------------------------------------------------------------

    return order;
  }

  Future<void> selectPayment(PaymentMethod method) async {
    final current = state.value;
    if (current == null) {
      return;
    }

    final order = current.order;

    // そのまま選択
    final updated = order.copyWith(paymentMethod: method);

    state = AsyncData(current.copyWith(order: updated));
  }
}
