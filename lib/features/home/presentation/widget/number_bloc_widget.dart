import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_state_management/core/injection.dart';
import 'package:flutter_state_management/features/home/presentation/controller/bloc/bloc.dart';
import 'package:flutter_state_management/features/home/presentation/widget/number_widget.dart';

class NumberBlocWidget extends StatelessWidget {
  const NumberBlocWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => getIt<NumberControllerBloc>(),
      child: Builder(
        builder: (context) {
          print('Bloc');
          return NumberWidget(
            onRandom: () => context
                .read<NumberControllerBloc>()
                .add(const NumberControllerEvent.random()),
            onAdd: () => context
                .read<NumberControllerBloc>()
                .add(const NumberControllerEvent.add()),
            number: BlocBuilder<NumberControllerBloc, NumberControllerState>(
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
                  success: (value) {
                    print('value: $value');
                    return NumberText(number: value);
                  },
                );
              },
            ),
          );
        },
      ),
    );
  }
}
