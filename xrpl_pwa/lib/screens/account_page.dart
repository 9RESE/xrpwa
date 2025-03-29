import 'package:flutter/material.dart';
import 'package:xrpl_pwa/widgets/app_drawer.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account'),
      ),
      drawer: const AppDrawer(currentRoute: '/account'),
      body: const Center(
        child: Text(
          'Account Page Coming Soon!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}