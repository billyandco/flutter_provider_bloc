import 'package:bloc/bloc.dart';
import 'package:flutter_state_management/features/home/home.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'number_controller_cubit.freezed.dart';
part 'number_controller_state.dart';

@injectable
class NumberControllerCubit extends Cubit<NumberControllerState> {
  NumberControllerCubit(this._fetchRandomNumberUsecase)
      : super(const NumberControllerState.initial());

  final IFetchRandomNumberUsecase _fetchRandomNumberUsecase;

  void add() {
    final value = state.whenOrNull(success: (value) => value);
    if (value != null) {
      emit(NumberControllerState.success(value + 1));
    }
  }

  Future<void> random() async {
    final result = await _fetchRandomNumberUsecase.call();
    final value = result.valueOrThrow();
    emit(NumberControllerState.success(value));
  }
}
