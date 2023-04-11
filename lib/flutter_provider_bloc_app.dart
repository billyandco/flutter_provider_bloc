import 'package:flutter/material.dart';
import 'package:flutter_provider_bloc/features/home/presentation/page/home_page.dart';

class FlutterProviderBlocApp extends StatelessWidget {
  const FlutterProviderBlocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
