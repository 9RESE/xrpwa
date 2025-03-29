import 'package:flutter/material.dart';
import 'package:xrpl_pwa/widgets/app_drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('XRPWA'),
      ),drawer: const AppDrawer(currentRoute: '/home',),
      body: const Center(
        child: Text(
          'Hello, XRPL World!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}