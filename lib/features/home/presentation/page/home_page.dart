import 'package:flutter/material.dart';
import 'package:flutter_state_management/features/home/presentation/widget/widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController controller;
  late final Map<Tab, Widget> tabs;

  @override
  void initState() {
    super.initState();

    tabs = {
      const Tab(child: Text('Stateful')): const NumberStatefulWidget(),
      const Tab(child: Text('Provider')): const NumberProviderWidget(),
      const Tab(child: Text('Bloc')): const NumberBlocWidget(),
      const Tab(child: Text('Cubit')): const NumberCubitWidget(),
      const Tab(child: Text('Riverpod')): const NumberRiverpodWidget(),
      const Tab(child: Text('MobX')): const NumberMobXWidget(),
    };

    controller = TabController(length: tabs.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter State Management'),
        centerTitle: true,
        bottom: TabBar(
          controller: controller,
          tabs: tabs.keys.toList(),
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: tabs.values.toList(),
      ),
    );
  }
}
