import 'package:flutter/material.dart';
import 'package:xrpl_pwa/widgets/app_drawer.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About XRPL PWA'),
      ),drawer: const AppDrawer(currentRoute: '/about',),
      body: const Center(
        child: Text(
          'A decentralized trading platform for XRPL!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}