import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management/core/injection.dart';
import 'package:flutter_state_management/flutter_state_management_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(
    const ProviderScope(
      child: FlutterStateManagementApp(),
    ),
  );
}
