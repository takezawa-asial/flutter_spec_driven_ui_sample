import 'package:flutter/material.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/domain/model/order.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/ui/provider/order_form_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BadOrderFormPage extends HookConsumerWidget {
  const BadOrderFormPage({super.key});
  static const _orderId = 'bad-001';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = orderFormStateProvider(_orderId);
    final async = ref.watch(provider);
    final notifier = ref.watch(provider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Bad Order Form')),
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (s) {
          final order = s.order;

          // （ダメ例）UI内で分岐をベタ書き
          String? banner;
          bool enableCod = true, enableBank = true;
          bool canBuy = true;
          String? reason;
          final hasSoldOut = order.items.any((i) => i.stock == Stock.soldOut);
          if (hasSoldOut && order.orderType != OrderType.preorder) {
            banner = '在庫がありません';
            canBuy = false;
            reason = '在庫なし';
          }
          if (order.orderType == OrderType.preorder) {
            banner = '予約商品は代引不可';
            enableCod = false;
          }
          if (order.orderType == OrderType.subscription) {
            banner = '定期購入はクレジットカードのみ';
            enableCod = false;
            enableBank = false;
          }
          final hasLimited = order.items.any((i) => i.stock == Stock.limited);
          final isPercent = order.coupon.maybeWhen(
            percentOff: (_) => true,
            orElse: () => false,
          );
          if (hasLimited && isPercent) {
            enableBank = false;
          }

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              if (banner != null)
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFF3CD),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(banner),
                ),
              const SizedBox(height: 16),

              const Text(
                '支払い方法（Bad: ビューで分岐・副作用）',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              RadioGroup<PaymentMethod>(
                groupValue: order.paymentMethod,
                onChanged: (v) {
                  // （Bad）ここで直接ビジネス条件を見て弾く等をやりがち
                  if (v == PaymentMethod.cod && !enableCod) return;
                  if (v == PaymentMethod.bank && !enableBank) return;
                  notifier.fetch(_orderId); // 本来は selectPayment などで Order を更新
                },
                child: Column(
                  children: const [
                    RadioListTile<PaymentMethod>(
                      title: Text('クレジットカード'),
                      value: PaymentMethod.card,
                    ),
                    RadioListTile<PaymentMethod>(
                      title: Text('代金引換'),
                      value: PaymentMethod.cod,
                    ),
                    RadioListTile<PaymentMethod>(
                      title: Text('銀行振込'),
                      value: PaymentMethod.bank,
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),
              if (order.shipment == Shipment.home) ...const [
                Text('お届け先'),
                SizedBox(height: 8),
                TextField(decoration: InputDecoration(labelText: '郵便番号')),
                TextField(decoration: InputDecoration(labelText: '住所')),
                SizedBox(height: 16),
              ] else ...const [
                Text('受取店舗'),
                SizedBox(height: 8),
                TextField(decoration: InputDecoration(labelText: '店舗コード')),
                SizedBox(height: 16),
              ],

              Text('小計: ${order.totalBeforeDiscount}'),
              Text('割引: -${order.discountAmount}'),
              Text('合計: ${order.totalAfterDiscount}'),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: canBuy ? () {} : null,
                child: Text(canBuy ? '購入する' : '購入できません（${reason ?? ''}）'),
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
