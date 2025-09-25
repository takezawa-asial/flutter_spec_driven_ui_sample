import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/ui/view/bad_order_form_page.dart';
import 'package:flutter_spec_driven_ui_sample/features/order/ui/view/good_order_form_page.dart';
import 'package:flutter_spec_driven_ui_sample/features/start/ui/view/start_page.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part './routes.dart';
part 'go_router_provider.g.dart';

/// NavigatorKey
final rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'rootNavigator');

@Riverpod(keepAlive: true)
GoRouter goRouter(Ref ref) {
  return GoRouter(
    routes: $appRoutes,
    initialLocation: '/',
    navigatorKey: rootNavigatorKey,
    debugLogDiagnostics: kDebugMode,
  );
}
