part of 'number_controller_bloc.dart';

@freezed
class NumberControllerState with _$NumberControllerState {
  const factory NumberControllerState.initial() = _Initial;
  const factory NumberControllerState.loading() = _Loading;
  const factory NumberControllerState.success(int value) = _Success;
}
