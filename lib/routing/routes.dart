part of './go_router_provider.dart';

@TypedGoRoute<StartUpRoute>(path: '/', routes: [])
class StartUpRoute extends GoRouteData with $StartUpRoute {
  const StartUpRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) => const StartPage();

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
}

@TypedGoRoute<BadOrderFormRoute>(path: '/bad_order_form', routes: [])
class BadOrderFormRoute extends GoRouteData with $BadOrderFormRoute {
  const BadOrderFormRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const BadOrderFormPage();

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
}

@TypedGoRoute<GoodOrderFormRoute>(path: '/good_order_form', routes: [])
class GoodOrderFormRoute extends GoRouteData with $GoodOrderFormRoute {
  const GoodOrderFormRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) =>
      const GoodOrderFormPage();

  static final GlobalKey<NavigatorState> $parentNavigatorKey = rootNavigatorKey;
}
