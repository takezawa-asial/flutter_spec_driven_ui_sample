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
          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _BadBanner(order: order),
              const SizedBox(height: 16),
              _BadPayment(
                order: order,
                onChanged: (v) {
                  notifier.selectPayment(v);
                },
              ),
              const SizedBox(height: 16),
              _BadAddress(order: order),
              const SizedBox(height: 16),
              _BadTotals(order: order),
              const SizedBox(height: 20),
              _BadBuyButton(order: order),
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

class _BadBanner extends StatelessWidget {
  final Order order;
  const _BadBanner({required this.order});

  @override
  Widget build(BuildContext context) {
    String? banner;
    final hasSoldOut = order.items.any((i) => i.stock == Stock.soldOut);
    if (hasSoldOut && order.orderType != OrderType.preorder) {
      banner = '在庫がありません';
    } else if (order.orderType == OrderType.preorder) {
      banner = '予約商品は代引不可';
    } else if (order.orderType == OrderType.subscription) {
      banner = '定期購入はクレジットカードのみ';
    } else if (order.items.any((i) => i.stock == Stock.limited)) {
      banner = '在庫が残りわずかです';
    }

    if (banner == null) return const SizedBox.shrink();
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFFFFF3CD),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(banner),
    );
  }
}

class _BadPayment extends StatelessWidget {
  final Order order;
  final ValueChanged<PaymentMethod> onChanged;
  const _BadPayment({required this.order, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    bool card = true, cod = true, bank = true;
    if (order.orderType == OrderType.preorder) cod = false;
    if (order.orderType == OrderType.subscription) {
      cod = false;
      bank = false;
    }
    final hasLimited = order.items.any((i) => i.stock == Stock.limited);
    final isPercent = order.coupon.maybeWhen(
      percentOff: (_) => true,
      orElse: () => false,
    );
    if (hasLimited && isPercent) bank = false;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('支払い方法（Bad）', style: TextStyle(fontWeight: FontWeight.bold)),
        RadioGroup<PaymentMethod>(
          groupValue: order.paymentMethod,
          onChanged: (v) {
            if (v != null) onChanged(v);
          },
          child: Column(
            children: [
              _radioTile(
                enabled: card,
                title: 'クレジットカード',
                value: PaymentMethod.card,
              ),
              _radioTile(enabled: cod, title: '代金引換', value: PaymentMethod.cod),
              _radioTile(
                enabled: bank,
                title: '銀行振込',
                value: PaymentMethod.bank,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _radioTile({
    required bool enabled,
    required String title,
    required PaymentMethod value,
  }) {
    final tile = RadioListTile<PaymentMethod>(title: Text(title), value: value);
    if (enabled) return tile;
    return IgnorePointer(
      ignoring: true,
      child: Opacity(opacity: 0.4, child: tile),
    );
  }
}

class _BadAddress extends StatelessWidget {
  final Order order;
  const _BadAddress({required this.order});

  @override
  Widget build(BuildContext context) {
    if (order.shipment == Shipment.home) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('お届け先', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          TextField(decoration: InputDecoration(labelText: '郵便番号')),
          TextField(decoration: InputDecoration(labelText: '住所')),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('受取店舗', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          TextField(decoration: InputDecoration(labelText: '店舗コード')),
        ],
      );
    }
  }
}

class _BadTotals extends StatelessWidget {
  final Order order;
  const _BadTotals({required this.order});

  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('小計: ${order.totalBeforeDiscount}'),
      Text('割引: -${order.discountAmount}'),
      Text('合計: ${order.totalAfterDiscount}'),
    ],
  );
}

class _BadBuyButton extends StatelessWidget {
  final Order order;
  const _BadBuyButton({required this.order});

  @override
  Widget build(BuildContext context) {
    bool canBuy = true;
    String? reason;
    final hasSoldOut = order.items.any((i) => i.stock == Stock.soldOut);
    if (hasSoldOut && order.orderType != OrderType.preorder) {
      canBuy = false;
      reason = '在庫なし';
    }
    return ElevatedButton(
      onPressed: canBuy ? () {} : null,
      child: Text(canBuy ? '購入する' : '購入できません（${reason ?? ''}）'),
    );
  }
}
