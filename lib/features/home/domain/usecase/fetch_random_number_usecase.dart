import 'dart:math';

import 'package:freezed_result/freezed_result.dart';
import 'package:injectable/injectable.dart';

abstract class IFetchRandomNumberUsecase {
  Future<Result<int, Object>> call();
}

@Injectable(as: IFetchRandomNumberUsecase)
class FetchRandomNumberUsecase implements IFetchRandomNumberUsecase {
  @override
  Future<Result<int, Object>> call() async {
    await Future.delayed(const Duration(milliseconds: 700));
    return Result.success(Random().nextInt(100));
  }
}
