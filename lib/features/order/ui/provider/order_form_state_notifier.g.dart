// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'order_form_state_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(OrderFormStateNotifier)
const orderFormStateProvider = OrderFormStateNotifierFamily._();

final class OrderFormStateNotifierProvider
    extends $AsyncNotifierProvider<OrderFormStateNotifier, OrderFormState> {
  const OrderFormStateNotifierProvider._({
    required OrderFormStateNotifierFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'orderFormStateProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$orderFormStateNotifierHash();

  @override
  String toString() {
    return r'orderFormStateProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  OrderFormStateNotifier create() => OrderFormStateNotifier();

  @override
  bool operator ==(Object other) {
    return other is OrderFormStateNotifierProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$orderFormStateNotifierHash() =>
    r'a519dfd3120471ac5b000c1669657e53352b06a3';

final class OrderFormStateNotifierFamily extends $Family
    with
        $ClassFamilyOverride<
          OrderFormStateNotifier,
          AsyncValue<OrderFormState>,
          OrderFormState,
          FutureOr<OrderFormState>,
          String
        > {
  const OrderFormStateNotifierFamily._()
    : super(
        retry: null,
        name: r'orderFormStateProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OrderFormStateNotifierProvider call(String id) =>
      OrderFormStateNotifierProvider._(argument: id, from: this);

  @override
  String toString() => r'orderFormStateProvider';
}

abstract class _$OrderFormStateNotifier extends $AsyncNotifier<OrderFormState> {
  late final _$args = ref.$arg as String;
  String get id => _$args;

  FutureOr<OrderFormState> build(String id);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<OrderFormState>, OrderFormState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<OrderFormState>, OrderFormState>,
              AsyncValue<OrderFormState>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
