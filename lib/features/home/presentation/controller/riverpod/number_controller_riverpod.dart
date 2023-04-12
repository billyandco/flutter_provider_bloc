import 'package:flutter_state_management/core/injection.dart';
import 'package:flutter_state_management/features/home/domain/domain.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'number_controller_riverpod.g.dart';

// refer to main.dart to see app declaration

@riverpod
IFetchRandomNumberUsecase iFetchRandomNumberUsecase(
  IFetchRandomNumberUsecaseRef ref,
) =>
    getIt<IFetchRandomNumberUsecase>();

@riverpod
class NumberControllerRiverpod extends _$NumberControllerRiverpod {
  NumberControllerRiverpod();

  @override
  int build() => 0;

  void add() => state++;

  Future<void> random() async {
    final result = await ref.read(iFetchRandomNumberUsecaseProvider).call();
    state = result.valueOrThrow();
  }
}
