import 'package:flutter_provider_bloc/core/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance..allowReassignment = true;

@InjectableInit()
Future<void> configureDependencies() async {
  getIt.init();
}
