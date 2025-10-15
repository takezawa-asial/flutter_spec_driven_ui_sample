import 'package:flutter_spec_driven_ui_sample/features/order/domain/model/order.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/ui/state/good/good_order_form_page_ui_state.dart';

GoodOrderFormPageUiState deriveGoodUiState(Order o) {
  PaymentMethod coerceSelected(
    PaymentMethod initial, {
    required bool card,
    required bool cod,
    required bool bank,
  }) {
    // 既に有効ならそのまま
    if ((initial == PaymentMethod.card && card) ||
        (initial == PaymentMethod.cod && cod) ||
        (initial == PaymentMethod.bank && bank)) {
      return initial;
    }
    // 優先順位: card -> cod -> bank（利用可能な最初のもの）
    if (card) return PaymentMethod.card;
    if (cod) return PaymentMethod.cod;
    if (bank) return PaymentMethod.bank;
    // どれも有効でない場合（在庫なしなど）は初期値を維持
    return initial;
  }

  PaymentDetailState detailFor(PaymentMethod method) {
    switch (method) {
      case PaymentMethod.card:
        return const PaymentDetailState.card();
      case PaymentMethod.bank:
        return const PaymentDetailState.bank();
      case PaymentMethod.cod:
        return const PaymentDetailState.none();
    }
  }

  // 1) 在庫なし（予約除く）
  final hasSoldOut = o.items.any((i) => i.stock == Stock.soldOut);
  if (hasSoldOut && o.orderType != OrderType.preorder) {
    final allowed = (
      card: false,
      cod: false,
      bank: false,
    );
    final selected = coerceSelected(o.paymentMethod,
        card: allowed.card, cod: allowed.cod, bank: allowed.bank);
    return GoodOrderFormPageUiState(
      banner: const BannerState.info('在庫がありません'),
      payment: PaymentUiState.options(
        card: allowed.card,
        cod: allowed.cod,
        bank: allowed.bank,
        selected: selected,
      ),
      address: o.shipment == Shipment.home
          ? AddressSectionState.needHome(
              postalCode: o.shippingAddress?.postalCode ?? '',
              addressLine1: o.shippingAddress?.line1 ?? '',
            )
          : AddressSectionState.needPickup(
              storeCode: o.pickupStore?.storeCode ?? '',
            ),
      buy: const BuyButtonState.disabled('在庫なし'),
      paymentDetail: detailFor(selected),
      subtotal: o.totalBeforeDiscount,
      discount: o.discountAmount,
      total: o.totalAfterDiscount,
    );
  }

  // 2) 予約：代引不可
  if (o.orderType == OrderType.preorder) {
    final allowed = (
      card: true,
      cod: false,
      bank: true,
    );
    final selected = coerceSelected(o.paymentMethod,
        card: allowed.card, cod: allowed.cod, bank: allowed.bank);
    return GoodOrderFormPageUiState(
      banner: const BannerState.info('予約商品は代引不可'),
      payment: PaymentUiState.options(
        card: allowed.card,
        cod: allowed.cod,
        bank: allowed.bank,
        selected: selected,
      ),
      address: o.shipment == Shipment.home
          ? AddressSectionState.needHome(
              postalCode: o.shippingAddress?.postalCode ?? '',
              addressLine1: o.shippingAddress?.line1 ?? '',
            )
          : AddressSectionState.needPickup(
              storeCode: o.pickupStore?.storeCode ?? '',
            ),
      buy: const BuyButtonState.enabled(),
      paymentDetail: detailFor(selected),
      subtotal: o.totalBeforeDiscount,
      discount: o.discountAmount,
      total: o.totalAfterDiscount,
    );
  }

  // 3) 定期：カードのみ
  if (o.orderType == OrderType.subscription) {
    final allowed = (
      card: true,
      cod: false,
      bank: false,
    );
    final selected = coerceSelected(o.paymentMethod,
        card: allowed.card, cod: allowed.cod, bank: allowed.bank);
    return GoodOrderFormPageUiState(
      banner: const BannerState.info('定期購入はクレジットカードのみ'),
      payment: PaymentUiState.options(
        card: allowed.card,
        cod: allowed.cod,
        bank: allowed.bank,
        selected: selected,
      ),
      address: o.shipment == Shipment.home
          ? AddressSectionState.needHome(
              postalCode: o.shippingAddress?.postalCode ?? '',
              addressLine1: o.shippingAddress?.line1 ?? '',
            )
          : AddressSectionState.needPickup(
              storeCode: o.pickupStore?.storeCode ?? '',
            ),
      buy: const BuyButtonState.enabled(),
      paymentDetail: detailFor(selected),
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

  final allowed = (
    card: true,
    cod: true,
    bank: !(hasLimited && isPercent),
  );
  final selected = coerceSelected(o.paymentMethod,
      card: allowed.card, cod: allowed.cod, bank: allowed.bank);
  return GoodOrderFormPageUiState(
    banner: hasLimited
        ? const BannerState.info('在庫が残りわずかです')
        : const BannerState.none(),
    payment: PaymentUiState.options(
      card: allowed.card,
      cod: allowed.cod,
      bank: allowed.bank,
      selected: selected,
    ),
    address: o.shipment == Shipment.home
        ? AddressSectionState.needHome(
            postalCode: o.shippingAddress?.postalCode ?? '',
            addressLine1: o.shippingAddress?.line1 ?? '',
          )
        : AddressSectionState.needPickup(
            storeCode: o.pickupStore?.storeCode ?? '',
          ),
    buy: const BuyButtonState.enabled(),
    paymentDetail: detailFor(selected),
    subtotal: o.totalBeforeDiscount,
    discount: o.discountAmount,
    total: o.totalAfterDiscount,
  );
}
