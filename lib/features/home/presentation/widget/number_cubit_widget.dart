import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_provider_bloc/core/injection.dart';
import 'package:flutter_provider_bloc/features/home/presentation/controller/cubit/cubit.dart';
import 'package:flutter_provider_bloc/features/home/presentation/widget/number_widget.dart';

class NumberCubitWidget extends StatelessWidget {
  const NumberCubitWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<NumberControllerCubit>(),
      child: Builder(
        builder: (context) {
          return NumberWidget(
            onRandom: context.read<NumberControllerCubit>().random,
            onAdd: context.read<NumberControllerCubit>().add,
            number: BlocBuilder<NumberControllerCubit, NumberControllerState>(
              buildWhen: (previous, current) {
                final previousValue =
                    previous.whenOrNull(success: (value) => value);
                final currentValue =
                    current.whenOrNull(success: (value) => value);
                return currentValue != null && previousValue != currentValue;
              },
              builder: (context, state) {
                return state.when(
                  initial: () => const Center(
                    child: Text(
                      'Initialized',
                      style: TextStyle(fontSize: 32),
                    ),
                  ),
                  loading: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  success: (value) => NumberText(number: value),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
