import 'package:bloc/bloc.dart';
import 'package:flutter_provider_bloc/features/home/home.dart';
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
    // TODO: implement add
  }

  Future<void> random() {
    // TODO: implement random
    throw UnimplementedError();
  }
}
