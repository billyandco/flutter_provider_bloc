part of 'number_controller_cubit.dart';

@freezed
class NumberControllerState with _$NumberControllerState {
  const factory NumberControllerState.initial() = _Initial;
  const factory NumberControllerState.success(int value) = _Success;
}
