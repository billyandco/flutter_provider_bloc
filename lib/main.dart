import 'package:flutter/material.dart';
import 'package:flutter_provider_bloc/core/injection.dart';
import 'package:flutter_provider_bloc/flutter_provider_bloc_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const FlutterProviderBlocApp());
}
