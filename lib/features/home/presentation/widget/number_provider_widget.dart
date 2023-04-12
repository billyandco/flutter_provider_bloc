import 'package:flutter/material.dart';
import 'package:flutter_state_management/core/injection.dart';
import 'package:flutter_state_management/features/home/home.dart';
import 'package:flutter_state_management/features/home/presentation/controller/provider/provider.dart';
import 'package:provider/provider.dart';

class NumberProviderWidget extends StatelessWidget {
  const NumberProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    print('Provider');
    return ChangeNotifierProvider(
      create: (_) => getIt<NumberControllerProvider>(),
      builder: (context, child) {
        return NumberWidget(
          onRandom: context.read<NumberControllerProvider>().random,
          onAdd: context.read<NumberControllerProvider>().add,
          number: Consumer<NumberControllerProvider>(
            builder: (context, controller, _) {
              print('value: ${controller.number}');
              return NumberText(number: controller.number);
            },
          ),
        );
      },
    );
  }
}
