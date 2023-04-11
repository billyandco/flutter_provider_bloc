import 'package:flutter/material.dart';
import 'package:flutter_provider_bloc/core/injection.dart';
import 'package:flutter_provider_bloc/features/home/home.dart';
import 'package:flutter_provider_bloc/features/home/presentation/controller/provider/provider.dart';
import 'package:provider/provider.dart';

class NumberProviderWidget extends StatelessWidget {
  const NumberProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => getIt<NumberControllerProvider>(),
      builder: (context, child) {
        return NumberWidget(
          onRandom: context.read<NumberControllerProvider>().random,
          onAdd: context.read<NumberControllerProvider>().add,
          number: Consumer<NumberControllerProvider>(
            builder: (context, controller, _) {
              return NumberText(number: controller.number);
            },
          ),
        );
      },
    );
  }
}
