import 'package:flutter/material.dart';
import 'package:flutter_spec_driven_ui_sample/routing/go_router_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: ref.watch(goRouterProvider),
      title: 'test',
      supportedLocales: const [Locale('ja', 'JP')],
    );
  }
}
