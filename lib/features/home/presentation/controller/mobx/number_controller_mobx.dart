import 'package:flutter_state_management/features/features.dart';
import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';

part 'number_controller_mobx.g.dart';

// class NumberControllerMobx = NumberControllerMobxBase
//     with _$NumberControllerMobx;

@injectable
class NumberControllerMobx extends NumberControllerMobxBase
    with _$NumberControllerMobx {
  NumberControllerMobx(super._fetchRandomNumberUsecase);
}

abstract class NumberControllerMobxBase with Store {
  NumberControllerMobxBase(this._fetchRandomNumberUsecase);

  final IFetchRandomNumberUsecase _fetchRandomNumberUsecase;

  @observable
  int number = 0;

  @action
  void add() => number++;

  @action
  Future<void> random() async {
    final result = await _fetchRandomNumberUsecase.call();
    number = result.valueOrThrow();
  }
}
