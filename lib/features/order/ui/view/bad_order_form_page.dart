import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/domain/model/order.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/ui/provider/order_form_state_notifier.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BadOrderFormPage extends HookConsumerWidget {
  const BadOrderFormPage({super.key});

  static const _orderId = 'bad-001';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = orderFormStateProvider(_orderId);
    final asyncValue = ref.watch(provider);
    final notifier = ref.watch(provider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Bad Order Form')),
      body: asyncValue.when(
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
            ],
          );
        },
      ),
    );
  }
}

class _BadBanner extends StatelessWidget {
  const _BadBanner({required this.order});

  final Order order;

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
  const _BadPayment({required this.order, required this.onChanged});

  final Order order;
  final ValueChanged<PaymentMethod> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('支払い方法（Bad）', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        _BadPaymentMethod(order: order, onChanged: onChanged),
        const SizedBox(height: 12),
        _BadPaymentDetail(order: order),
      ],
    );
  }
}

/// 支払い方法の選択（Bad: 各種ビジネス分岐をここで直接計算）
class _BadPaymentMethod extends StatelessWidget {
  final Order order;
  final ValueChanged<PaymentMethod> onChanged;
  const _BadPaymentMethod({required this.order, required this.onChanged});

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

    return RadioGroup<PaymentMethod>(
      groupValue: order.paymentMethod,
      onChanged: (v) {
        if (v == null) return;
        if (v == PaymentMethod.cod && !cod) return;
        if (v == PaymentMethod.bank && !bank) return;
        onChanged(v);
      },
      child: Column(
        children: [
          _radioTile(
            enabled: card,
            title: 'クレジットカード',
            value: PaymentMethod.card,
          ),
          _radioTile(enabled: cod, title: '代金引換', value: PaymentMethod.cod),
          _radioTile(enabled: bank, title: '銀行振込', value: PaymentMethod.bank),
        ],
      ),
    );
  }

  Widget _radioTile({
    required bool enabled,
    required String title,
    required PaymentMethod value,
  }) {
    final tile = RadioListTile<PaymentMethod>(title: Text(title), value: value);
    return enabled
        ? tile
        : IgnorePointer(
            ignoring: true,
            child: Opacity(opacity: 0.4, child: tile),
          );
  }
}

class _BadPaymentDetail extends StatelessWidget {
  const _BadPaymentDetail({required this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    switch (order.paymentMethod) {
      case PaymentMethod.bank:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('銀行振込情報', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            TextField(decoration: InputDecoration(labelText: '銀行名')),
            TextField(decoration: InputDecoration(labelText: '口座番号')),
          ],
        );
      case PaymentMethod.card:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('クレジットカード情報', style: TextStyle(fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            TextField(decoration: InputDecoration(labelText: 'カード番号')),
          ],
        );
      case PaymentMethod.cod:
        return const SizedBox.shrink(); // 代引きは入力不要
    }
  }
}

class _BadAddress extends HookWidget {
  const _BadAddress({required this.order});

  final Order order;

  @override
  Widget build(BuildContext context) {
    if (order.shipment == Shipment.home) {
      final postalController = useTextEditingController(
        text: order.shippingAddress?.postalCode ?? '',
      );
      final addressController = useTextEditingController(
        text: order.shippingAddress?.line1 ?? '',
      );
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('お届け先', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          TextField(
            decoration: const InputDecoration(labelText: '郵便番号'),
            controller: postalController,
          ),
          TextField(
            decoration: const InputDecoration(labelText: '住所'),
            controller: addressController,
          ),
        ],
      );
    } else {
      final storeCodeController = useTextEditingController(
        text: order.pickupStore?.storeCode ?? '',
      );
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('受取店舗', style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          TextField(
            decoration: const InputDecoration(labelText: '店舗コード'),
            controller: storeCodeController,
          ),
        ],
      );
    }
  }
}

class _BadTotals extends StatelessWidget {
  const _BadTotals({required this.order});

  final Order order;

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
  const _BadBuyButton({required this.order});

  final Order order;

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
