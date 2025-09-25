// order_form_state_notifier.dart
import 'package:flutter_spec_driven_ui_sample/features/order/domain/model/order.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'order_form_state_notifier.freezed.dart';
part 'order_form_state_notifier.g.dart';

@freezed
abstract class OrderFormState with _$OrderFormState {
  const factory OrderFormState({required Order order}) = _OrderFormState;
}

@riverpod
class OrderFormStateNotifier extends _$OrderFormStateNotifier {
  @override
  Future<OrderFormState> build(String id) async {
    final order = await fetch(id);
    return OrderFormState(order: order);
  }

  /// モックで Order を生成し、state を更新して返す
  Future<Order> fetch(String orderId) async {
    await Future<void>.delayed(const Duration(milliseconds: 400));

    final order = Order(
      id: 'ORD-$orderId',
      items: const [
        OrderItem(
          sku: 'SKU-TSHIRT',
          name: 'T-Shirt',
          unitPrice: 2000,
          quantity: 2,
        ),
        OrderItem(sku: 'SKU-MUG', name: 'Mug', unitPrice: 1200, quantity: 1),
      ],
      // 必要ならここでケースを調整（予約・在庫・クーポンなど）
      // orderType: OrderType.preorder,
      // coupon: Coupon.percentOff(percent: 15),
      // shipment: Shipment.pickup,
    );

    return order;
  }

  Future<void> selectPayment(PaymentMethod method) async {
    final current = await future; // 現在の OrderFormState
    final order = current.order;

    // そのまま選択
    final updated = order.copyWith(paymentMethod: method);

    state = AsyncData(OrderFormState(order: updated));
  }
}
