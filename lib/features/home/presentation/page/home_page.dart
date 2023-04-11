import 'package:flutter/material.dart';
import 'package:flutter_provider_bloc/features/home/presentation/widget/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter State Management'),
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
          tabs: const [
            Tab(child: Text('Stateful')),
            Tab(child: Text('Provider')),
            Tab(child: Text('Bloc')),
            Tab(child: Text('Cubit')),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: const [
          NumberProviderWidget(),
          NumberProviderWidget(),
          NumberBlocWidget(),
          NumberCubitWidget(),
        ],
      ),
    );
  }
}
