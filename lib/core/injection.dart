import 'package:flutter_state_management/core/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance..allowReassignment = true;

@InjectableInit()
Future<void> configureDependencies() async {
  getIt.init();
}
