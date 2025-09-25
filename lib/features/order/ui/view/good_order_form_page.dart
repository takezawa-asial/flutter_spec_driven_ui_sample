import 'package:flutter/material.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/domain/model/order.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/ui/mapper/order_to_good_order_form_page_ui_state.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/ui/provider/order_form_state_notifier.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/ui/state/good/good_order_form_page_ui_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GoodOrderFormPage extends HookConsumerWidget {
  const GoodOrderFormPage({super.key});
  static const _orderId = 'good-001';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = orderFormStateProvider(_orderId);
    final async = ref.watch(provider);
    final notifier = ref.watch(provider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Good Order Form')),
      body: async.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (s) {
          final order = s.order;
          final ui = deriveGoodUiState(order);

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _BannerView(state: ui.banner),
              const SizedBox(height: 16),
              _PaymentSection(
                state: ui.payment,
                onChanged: (m) => notifier.selectPayment(m),
              ),
              const SizedBox(height: 16),
              _AddressSection(state: ui.address),
              const SizedBox(height: 16),
              _TotalsView(
                subtotal: ui.subtotal,
                discount: ui.discount,
                total: ui.total,
              ),
              const SizedBox(height: 20),
              _BuyButton(state: ui.buy),
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

//
// ===== コンポーネント（内部で switch して描画） =====
//

class _BannerView extends StatelessWidget {
  final BannerState state;
  const _BannerView({required this.state});

  @override
  Widget build(BuildContext context) {
    return switch (state) {
      NoBanner() => const SizedBox.shrink(),
      InfoBanner(:final text) => Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFFFFF3CD),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(text),
      ),
    };
  }
}

class _PaymentSection extends StatelessWidget {
  final PaymentUiState state;
  final ValueChanged<PaymentMethod> onChanged;
  const _PaymentSection({required this.state, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return switch (state) {
      PaymentOptions(:final card, :final cod, :final bank, :final selected) =>
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('支払い方法', style: TextStyle(fontWeight: FontWeight.bold)),
            RadioGroup<PaymentMethod>(
              groupValue: selected,
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
                  _radioTile(
                    enabled: cod,
                    title: '代金引換',
                    value: PaymentMethod.cod,
                  ),
                  _radioTile(
                    enabled: bank,
                    title: '銀行振込',
                    value: PaymentMethod.bank,
                  ),
                ],
              ),
            ),
          ],
        ),
    };
  }

  Widget _radioTile({
    required bool enabled,
    required String title,
    required PaymentMethod value,
  }) {
    final tile = RadioListTile<PaymentMethod>(title: Text(title), value: value);
    if (enabled) return tile;
    // 無効時は操作不可＋薄く
    return IgnorePointer(
      ignoring: true,
      child: Opacity(opacity: 0.4, child: tile),
    );
  }
}

class _AddressSection extends StatelessWidget {
  final AddressSectionState state;
  const _AddressSection({required this.state});

  @override
  Widget build(BuildContext context) {
    return switch (state) {
      NeedHomeAddress() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('お届け先', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          TextField(decoration: InputDecoration(labelText: '郵便番号')),
          TextField(decoration: InputDecoration(labelText: '住所')),
        ],
      ),
      NeedPickupStore() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('受取店舗', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          TextField(decoration: InputDecoration(labelText: '店舗コード')),
        ],
      ),
      NoAddressInputs() => const SizedBox.shrink(),
    };
  }
}

class _TotalsView extends StatelessWidget {
  final int subtotal, discount, total;
  const _TotalsView({
    required this.subtotal,
    required this.discount,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('小計: $subtotal'),
        Text('割引: -$discount'),
        Text('合計: $total'),
      ],
    );
  }
}

class _BuyButton extends StatelessWidget {
  final BuyButtonState state;
  const _BuyButton({required this.state});

  @override
  Widget build(BuildContext context) {
    return switch (state) {
      BuyEnabled() => ElevatedButton(
        onPressed: () {},
        child: const Text('購入する'),
      ),
      BuyDisabled(:final reason) => ElevatedButton(
        onPressed: null,
        child: Text('購入できません（$reason）'),
      ),
    };
  }
}
