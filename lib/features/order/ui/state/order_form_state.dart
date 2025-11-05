import 'package:flutter_spec_driven_ui_sample/features/order/domain/model/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_form_state.freezed.dart';

@freezed
abstract class OrderFormState with _$OrderFormState {
  const factory OrderFormState({required Order order}) = _OrderFormState;
}
