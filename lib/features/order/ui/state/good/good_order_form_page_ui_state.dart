import 'package:flutter_spec_driven_ui_sample/features/order/domain/model/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'good_order_form_page_ui_state.freezed.dart';

@freezed
abstract class GoodOrderFormPageUiState with _$GoodOrderFormPageUiState {
  const factory GoodOrderFormPageUiState({
    required BannerState banner,
    required PaymentUiState payment,
    required AddressSectionState address,
    required BuyButtonState buy,
    required PaymentDetailState paymentDetail,
    required int subtotal,
    required int discount,
    required int total,
  }) = _GoodOrderFormPageUiState;
}

@freezed
sealed class BannerState with _$BannerState {
  const factory BannerState.none() = BannerNone;
  const factory BannerState.info(String text) = BannerInfo;
}

@freezed
sealed class PaymentUiState with _$PaymentUiState {
  const factory PaymentUiState.options({
    required bool card,
    required bool cod,
    required bool bank,
    required PaymentMethod selected,
  }) = PaymentOptions;
}

@freezed
sealed class AddressSectionState with _$AddressSectionState {
  const factory AddressSectionState.needHome() = AddressNeedHome;
  const factory AddressSectionState.needPickup() = AddressNeedPickup;
  const factory AddressSectionState.none() = AddressNone;
}

@freezed
sealed class BuyButtonState with _$BuyButtonState {
  const factory BuyButtonState.enabled() = BuyEnabled;
  const factory BuyButtonState.disabled(String reason) = BuyDisabled;
}

@freezed
sealed class PaymentDetailState with _$PaymentDetailState {
  const factory PaymentDetailState.none() = PaymentDetailNone;
  const factory PaymentDetailState.bank() = PaymentDetailBank;
  const factory PaymentDetailState.card() = PaymentDetailCard;
}
