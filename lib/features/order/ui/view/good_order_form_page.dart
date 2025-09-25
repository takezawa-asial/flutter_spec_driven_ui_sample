import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class GoodOrderFormPage extends HookConsumerWidget {
  const GoodOrderFormPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: TextButton(
          child: const Text('Go To BottomTabPage'),
          onPressed: () {},
        ),
      ),
    );
  }
}
