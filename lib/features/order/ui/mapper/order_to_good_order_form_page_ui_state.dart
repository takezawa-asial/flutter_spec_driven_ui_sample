import 'package:flutter_spec_driven_ui_sample/features/order/domain/model/order.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/ui/state/good/good_order_form_page_ui_state.dart';

GoodOrderFormPageUiState deriveGoodUiState(Order o) {
  // 1) 在庫なし（予約除く）
  final hasSoldOut = o.items.any((i) => i.stock == Stock.soldOut);
  if (hasSoldOut && o.orderType != OrderType.preorder) {
    return GoodOrderFormPageUiState(
      banner: const BannerState.info('在庫がありません'),
      payment: PaymentUiState.options(
        card: false,
        cod: false,
        bank: false,
        selected: o.paymentMethod,
      ),
      address: o.shipment == Shipment.home
          ? const AddressSectionState.needHome()
          : const AddressSectionState.needPickup(),
      buy: const BuyButtonState.disabled('在庫なし'),
      subtotal: o.totalBeforeDiscount,
      discount: o.discountAmount,
      total: o.totalAfterDiscount,
    );
  }

  // 2) 予約：代引不可
  if (o.orderType == OrderType.preorder) {
    return GoodOrderFormPageUiState(
      banner: const BannerState.info('予約商品は代引不可'),
      payment: PaymentUiState.options(
        card: true,
        cod: false,
        bank: true,
        selected: o.paymentMethod,
      ),
      address: o.shipment == Shipment.home
          ? const AddressSectionState.needHome()
          : const AddressSectionState.needPickup(),
      buy: const BuyButtonState.enabled(),
      subtotal: o.totalBeforeDiscount,
      discount: o.discountAmount,
      total: o.totalAfterDiscount,
    );
  }

  // 3) 定期：カードのみ
  if (o.orderType == OrderType.subscription) {
    return GoodOrderFormPageUiState(
      banner: const BannerState.info('定期購入はクレジットカードのみ'),
      payment: PaymentUiState.options(
        card: true,
        cod: false,
        bank: false,
        selected: o.paymentMethod,
      ),
      address: o.shipment == Shipment.home
          ? const AddressSectionState.needHome()
          : const AddressSectionState.needPickup(),
      buy: const BuyButtonState.enabled(),
      subtotal: o.totalBeforeDiscount,
      discount: o.discountAmount,
      total: o.totalAfterDiscount,
    );
  }

  // 4) 通常：在庫わずか + %OFF なら銀行振込不可
  final hasLimited = o.items.any((i) => i.stock == Stock.limited);
  final isPercent = o.coupon.maybeWhen(
    percentOff: (_) => true,
    orElse: () => false,
  );

  return GoodOrderFormPageUiState(
    banner: hasLimited
        ? const BannerState.info('在庫が残りわずかです')
        : const BannerState.none(),
    payment: PaymentUiState.options(
      card: true,
      cod: true,
      bank: !(hasLimited && isPercent),
      selected: o.paymentMethod,
    ),
    address: o.shipment == Shipment.home
        ? const AddressSectionState.needHome()
        : const AddressSectionState.needPickup(),
    buy: const BuyButtonState.enabled(),
    subtotal: o.totalBeforeDiscount,
    discount: o.discountAmount,
    total: o.totalAfterDiscount,
  );
}
