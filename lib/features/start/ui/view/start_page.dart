import 'package:flutter/material.dart';
import 'package:flutter_spec_driven_ui_sample/routing/go_router_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class StartPage extends HookConsumerWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextButton(
              child: const Text('Go To BadOrderFormPage'),
              onPressed: () {
                BadOrderFormRoute().push(context);
              },
            ),
            TextButton(
              child: const Text('Go To GoodOrderFormPage'),
              onPressed: () {
                GoodOrderFormRoute().push(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
