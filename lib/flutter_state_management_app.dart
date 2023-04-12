import 'package:flutter/material.dart';
import 'package:flutter_state_management/features/home/presentation/page/home_page.dart';

class FlutterStateManagementApp extends StatelessWidget {
  const FlutterStateManagementApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
