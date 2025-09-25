import 'package:flutter/material.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/domain/model/order.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/ui/provider/order_form_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GoodOrderFormPage extends HookConsumerWidget {
  const GoodOrderFormPage({super.key});
  static const _orderId = 'good-001';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = orderFormStateProvider(_orderId);
    final async = ref.watch(orderFormStateProvider(_orderId));
    final notifier = ref.watch(provider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Good Order Form')),
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (s) {
          final order = s.order;
          final ui = _deriveViewState(order);

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              if (ui.bannerText != null)
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF3CD),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(ui.bannerText!),
                ),
              const SizedBox(height: 16),

              const Text(
                '支払い方法',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              RadioGroup<PaymentMethod>(
                groupValue: order.paymentMethod,
                onChanged: (v) {
                  if (v == null) {
                    return;
                  }
                  notifier.selectPayment(v);
                },
                child: Column(
                  children: [
                    RadioListTile<PaymentMethod>(
                      title: const Text('クレジットカード'),
                      value: PaymentMethod.card,
                    ),
                    RadioListTile<PaymentMethod>(
                      title: const Text('代金引換'),
                      value: PaymentMethod.cod,
                      // 無効化したいときは Visibility/IgnorePointer 等で制御
                      // この例では ui.payment の可否は描画/操作に反映しない（良い例の主旨はロジック分離）
                    ),
                    RadioListTile<PaymentMethod>(
                      title: const Text('銀行振込'),
                      value: PaymentMethod.bank,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
              if (ui.needAddress) ...const [
                Text('お届け先', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                TextField(decoration: InputDecoration(labelText: '郵便番号')),
                TextField(decoration: InputDecoration(labelText: '住所')),
                SizedBox(height: 16),
              ],
              if (ui.needPickupStore) ...const [
                Text('受取店舗', style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(height: 8),
                TextField(decoration: InputDecoration(labelText: '店舗コード')),
                SizedBox(height: 16),
              ],

              Text('小計: ${order.totalBeforeDiscount}'),
              Text('割引: -${order.discountAmount}'),
              Text('合計: ${order.totalAfterDiscount}'),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: ui.buyEnabled ? () {} : null,
                child: Text(
                  ui.buyEnabled ? '購入する' : '購入できません（${ui.disabledReason}）',
                ),
              ),

              const SizedBox(height: 12),
              ElevatedButton(
                onPressed: () => notifier.fetch(_orderId),
                child: const Text('Refetch'),
              ),
            ],
          );
        },
      ),
    );
  }
}

/// ====== “UIで必要な結論”だけを持つ軽量UiStateと導出関数 ======
class _PaymentAvailability {
  final bool card, cod, bank;
  const _PaymentAvailability({
    required this.card,
    required this.cod,
    required this.bank,
  });
}

class _OrderUiState {
  final String? bannerText;
  final _PaymentAvailability payment;
  final bool needAddress;
  final bool needPickupStore;
  final bool buyEnabled;
  final String? disabledReason;
  const _OrderUiState({
    required this.bannerText,
    required this.payment,
    required this.needAddress,
    required this.needPickupStore,
    required this.buyEnabled,
    required this.disabledReason,
  });
}

_OrderUiState _deriveViewState(Order o) {
  final hasSoldOut = o.items.any((i) => i.stock == Stock.soldOut);
  if (hasSoldOut && o.orderType != OrderType.preorder) {
    return const _OrderUiState(
      bannerText: '在庫がありません',
      payment: _PaymentAvailability(card: false, cod: false, bank: false),
      needAddress: true,
      needPickupStore: false,
      buyEnabled: false,
      disabledReason: '在庫なし',
    );
  }
  if (o.orderType == OrderType.preorder) {
    return _OrderUiState(
      bannerText: '予約商品は代引不可',
      payment: const _PaymentAvailability(card: true, cod: false, bank: true),
      needAddress: o.shipment == Shipment.home,
      needPickupStore: o.shipment == Shipment.pickup,
      buyEnabled: true,
      disabledReason: null,
    );
  }
  if (o.orderType == OrderType.subscription) {
    return _OrderUiState(
      bannerText: '定期購入はクレジットカードのみ',
      payment: const _PaymentAvailability(card: true, cod: false, bank: false),
      needAddress: o.shipment == Shipment.home,
      needPickupStore: o.shipment == Shipment.pickup,
      buyEnabled: true,
      disabledReason: null,
    );
  }
  final hasLimited = o.items.any((i) => i.stock == Stock.limited);
  final isPercent = o.coupon.maybeWhen(
    percentOff: (_) => true,
    orElse: () => false,
  );
  final banner = hasLimited ? '在庫が残りわずかです' : null;
  final payment = (hasLimited && isPercent)
      ? const _PaymentAvailability(card: true, cod: true, bank: false)
      : const _PaymentAvailability(card: true, cod: true, bank: true);
  return _OrderUiState(
    bannerText: banner,
    payment: payment,
    needAddress: o.shipment == Shipment.home,
    needPickupStore: o.shipment == Shipment.pickup,
    buyEnabled: true,
    disabledReason: null,
  );
}
