import 'package:flutter/foundation.dart';
import 'package:flutter_provider_bloc/features/home/domain/usecase/fetch_random_number_usecase.dart';
import 'package:injectable/injectable.dart';

@injectable
class NumberControllerProvider with ChangeNotifier {
  NumberControllerProvider(this._fetchRandomNumberUsecase);

  final IFetchRandomNumberUsecase _fetchRandomNumberUsecase;

  int _number = 0;

  int get number => _number;

  Future<void> random() async {
    final value = await _fetchRandomNumberUsecase.call().then(
          (result) => result.valueOrThrow(),
        );

    _number = value;
    notifyListeners();
  }

  void add() {
    _number++;
    notifyListeners();
  }
}
