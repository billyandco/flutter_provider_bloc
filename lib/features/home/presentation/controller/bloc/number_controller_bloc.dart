import 'package:bloc/bloc.dart';
import 'package:flutter_state_management/features/home/home.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'number_controller_bloc.freezed.dart';
part 'number_controller_event.dart';
part 'number_controller_state.dart';

@injectable
class NumberControllerBloc
    extends Bloc<NumberControllerEvent, NumberControllerState> {
  NumberControllerBloc(
    this._fetchRandomNumberUsecase,
  ) : super(const _Initial()) {
    on<_Add>(_add);
    on<_Random>(_random);
  }

  final IFetchRandomNumberUsecase _fetchRandomNumberUsecase;

  void _add(_Add event, Emitter<NumberControllerState> emit) {
    final value = state.whenOrNull(success: (value) => value);
    if (value != null) {
      emit(NumberControllerState.success(value + 1));
    }
  }

  Future<void> _random(
    _Random event,
    Emitter<NumberControllerState> emit,
  ) async {
    final result = await _fetchRandomNumberUsecase.call();
    final value = result.valueOrThrow();
    emit(NumberControllerState.success(value));
  }
}
