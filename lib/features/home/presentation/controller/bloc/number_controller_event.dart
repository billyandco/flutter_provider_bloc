part of 'number_controller_bloc.dart';

@freezed
class NumberControllerEvent with _$NumberControllerEvent {
  const factory NumberControllerEvent.add() = _Add;
  const factory NumberControllerEvent.random() = _Random;
}
