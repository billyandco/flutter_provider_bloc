import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_state_management/core/injection.dart';
import 'package:flutter_state_management/features/home/home.dart';
import 'package:flutter_state_management/features/home/presentation/controller/mobx/number_controller_mobx.dart';

class NumberMobXWidget extends StatefulWidget {
  const NumberMobXWidget();

  @override
  State<NumberMobXWidget> createState() => _NumberMobXWidgetState();
}

class _NumberMobXWidgetState extends State<NumberMobXWidget> {
  late final NumberControllerMobx controller;

  @override
  void initState() {
    super.initState();

    controller = getIt<NumberControllerMobx>();
  }

  @override
  Widget build(BuildContext context) {
    print('MobX');
    return NumberWidget(
      onRandom: controller.random,
      onAdd: controller.add,
      number: Observer(
        builder: (context) {
          print('value: ${controller.number}');
          return NumberText(number: controller.number);
        },
      ),
    );
  }
}
