// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'go_router_provider.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
  $startUpRoute,
  $badOrderFormRoute,
  $goodOrderFormRoute,
];

RouteBase get $startUpRoute => GoRouteData.$route(
  path: '/',
  parentNavigatorKey: StartUpRoute.$parentNavigatorKey,
  factory: $StartUpRoute._fromState,
);

mixin $StartUpRoute on GoRouteData {
  static StartUpRoute _fromState(GoRouterState state) => const StartUpRoute();

  @override
  String get location => GoRouteData.$location('/');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $badOrderFormRoute => GoRouteData.$route(
  path: '/bad_order_form',
  parentNavigatorKey: BadOrderFormRoute.$parentNavigatorKey,
  factory: $BadOrderFormRoute._fromState,
);

mixin $BadOrderFormRoute on GoRouteData {
  static BadOrderFormRoute _fromState(GoRouterState state) =>
      const BadOrderFormRoute();

  @override
  String get location => GoRouteData.$location('/bad_order_form');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $goodOrderFormRoute => GoRouteData.$route(
  path: '/good_order_form',
  parentNavigatorKey: GoodOrderFormRoute.$parentNavigatorKey,
  factory: $GoodOrderFormRoute._fromState,
);

mixin $GoodOrderFormRoute on GoRouteData {
  static GoodOrderFormRoute _fromState(GoRouterState state) =>
      const GoodOrderFormRoute();

  @override
  String get location => GoRouteData.$location('/good_order_form');

  @override
  void go(BuildContext context) => context.go(location);

  @override
  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  @override
  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  @override
  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(goRouter)
const goRouterProvider = GoRouterProvider._();

final class GoRouterProvider
    extends $FunctionalProvider<GoRouter, GoRouter, GoRouter>
    with $Provider<GoRouter> {
  const GoRouterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'goRouterProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$goRouterHash();

  @$internal
  @override
  $ProviderElement<GoRouter> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GoRouter create(Ref ref) {
    return goRouter(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GoRouter value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GoRouter>(value),
    );
  }
}

String _$goRouterHash() => r'c99dd7a3b9706614e7ca7b56f86c4d7d175fde74';
