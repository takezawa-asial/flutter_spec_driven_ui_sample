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
    required int subtotal,
    required int discount,
    required int total,
  }) = _GoodOrderFormPageUiState;
}

@freezed
sealed class BannerState with _$BannerState {
  const factory BannerState.none() = NoBanner;
  const factory BannerState.info(String text) = InfoBanner;
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
  const factory AddressSectionState.needHome() = NeedHomeAddress;
  const factory AddressSectionState.needPickup() = NeedPickupStore;
  const factory AddressSectionState.none() = NoAddressInputs;
}

@freezed
sealed class BuyButtonState with _$BuyButtonState {
  const factory BuyButtonState.enabled() = BuyEnabled;
  const factory BuyButtonState.disabled(String reason) = BuyDisabled;
}
