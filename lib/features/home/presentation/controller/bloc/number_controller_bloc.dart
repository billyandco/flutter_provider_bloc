import 'package:bloc/bloc.dart';
import 'package:flutter_provider_bloc/features/home/home.dart';
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
    on<NumberControllerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }

  final IFetchRandomNumberUsecase _fetchRandomNumberUsecase;
}
