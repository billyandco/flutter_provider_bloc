import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management/features/home/home.dart';
import 'package:flutter_state_management/features/home/presentation/controller/riverpod/number_controller_riverpod.dart';

class NumberRiverpodWidget extends ConsumerWidget {
  const NumberRiverpodWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    print('Riverpod ');
    return NumberWidget(
      onRandom: ref.read(numberControllerRiverpodProvider.notifier).random,
      onAdd: ref.read(numberControllerRiverpodProvider.notifier).add,
      number: Builder(
        builder: (context) {
          final value = ref.watch(numberControllerRiverpodProvider);
          print('value: $value');
          return NumberText(number: value);
        },
      ),
    );
  }
}
