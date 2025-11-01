import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/domain/model/order.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/ui/mapper/order_to_good_order_form_page_ui_state.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/ui/provider/order_form_state_notifier.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/ui/state/good_order_form_page_ui_state.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GoodOrderFormPage extends HookConsumerWidget {
  const GoodOrderFormPage({super.key});

  static const _orderId = 'good-001';

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provider = orderFormStateProvider(_orderId);
    final asyncValue = ref.watch(provider);
    final notifier = ref.watch(provider.notifier);

    return Scaffold(
      appBar: AppBar(title: const Text('Good Order Form')),
      body: asyncValue.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (e, _) => Center(child: Text('Error: $e')),
        data: (s) {
          final order = s.order;
          final ui = deriveGoodUiState(order);

          return ListView(
            padding: const EdgeInsets.all(16),
            children: [
              _GoodBannerView(state: ui.banner),
              const SizedBox(height: 16),
              _GoodPayment(
                methodState: ui.payment,
                detailState: ui.paymentDetail,
                onChanged: (m) => notifier.selectPayment(m),
              ),
              const SizedBox(height: 16),
              _GoodAddressSection(state: ui.address),
              const SizedBox(height: 16),
              _GoodTotalsView(
                subtotal: ui.subtotal,
                discount: ui.discount,
                total: ui.total,
              ),
              const SizedBox(height: 20),
              _GoodBuyButton(state: ui.buy),
            ],
          );
        },
      ),
    );
  }
}

class _GoodBannerView extends StatelessWidget {
  const _GoodBannerView({required this.state});

  final BannerState state;

  @override
  Widget build(BuildContext context) {
    return switch (state) {
      BannerNone() => const SizedBox.shrink(),
      BannerInfo(:final text) => Container(
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

class _GoodPayment extends StatelessWidget {
  const _GoodPayment({
    required this.methodState,
    required this.detailState,
    required this.onChanged,
  });

  final PaymentUiState methodState;
  final PaymentDetailState detailState;
  final ValueChanged<PaymentMethod> onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('支払い方法', style: TextStyle(fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        _GoodPaymentMethod(state: methodState, onChanged: onChanged),
        const SizedBox(height: 12),
        _GoodPaymentDetail(state: detailState),
      ],
    );
  }
}

class _GoodPaymentMethod extends StatelessWidget {
  const _GoodPaymentMethod({required this.state, required this.onChanged});

  final PaymentUiState state;
  final ValueChanged<PaymentMethod> onChanged;

  @override
  Widget build(BuildContext context) {
    return switch (state) {
      PaymentOptions(:final card, :final cod, :final bank, :final selected) =>
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
              _radioTile(enabled: cod, title: '代金引換', value: PaymentMethod.cod),
              _radioTile(
                enabled: bank,
                title: '銀行振込',
                value: PaymentMethod.bank,
              ),
            ],
          ),
        ),
    };
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

class _GoodPaymentDetail extends StatelessWidget {
  const _GoodPaymentDetail({required this.state});

  final PaymentDetailState state;

  @override
  Widget build(BuildContext context) {
    return switch (state) {
      PaymentDetailNone() => const SizedBox.shrink(),
      PaymentDetailBank() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('銀行振込情報', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          TextField(decoration: InputDecoration(labelText: '銀行名')),
          TextField(decoration: InputDecoration(labelText: '口座番号')),
        ],
      ),
      PaymentDetailCard() => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text('クレジットカード情報', style: TextStyle(fontWeight: FontWeight.bold)),
          SizedBox(height: 8),
          TextField(decoration: InputDecoration(labelText: 'カード番号')),
        ],
      ),
    };
  }
}

class _GoodAddressSection extends HookWidget {
  const _GoodAddressSection({required this.state});

  final AddressSectionState state;

  @override
  Widget build(BuildContext context) {
    return switch (state) {
      AddressNeedHome(:final postalCode, :final addressLine1) => () {
        final postalController = useTextEditingController(text: postalCode);
        final addressController = useTextEditingController(text: addressLine1);
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
      }(),
      AddressNeedPickup(:final storeCode) => () {
        final storeCodeController = useTextEditingController(text: storeCode);
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
      }(),
      AddressNone() => const SizedBox.shrink(),
    };
  }
}

class _GoodTotalsView extends StatelessWidget {
  const _GoodTotalsView({
    required this.subtotal,
    required this.discount,
    required this.total,
  });

  final int subtotal, discount, total;

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

class _GoodBuyButton extends StatelessWidget {
  const _GoodBuyButton({required this.state});

  final BuyButtonState state;

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
