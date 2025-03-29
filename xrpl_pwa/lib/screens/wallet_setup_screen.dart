import 'package:flutter/material.dart';
import 'package:xrpl_dart/xrpl_dart.dart';
import 'package:xrpl_pwa/providers/wallet_manager.dart';

class WalletSetupScreen extends StatefulWidget {
  const WalletSetupScreen({super.key});

  @override
  _WalletSetupScreenState createState() => _WalletSetupScreenState();
}

class _WalletSetupScreenState extends State<WalletSetupScreen> {
  final _passwordController = TextEditingController();
  String _status = '';

  Future<void> _createWallet() async {
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set Up Wallet'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(labelText: 'Enter Password'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _createWallet,
              child: const Text('Create Wallet'),
            ),
            const SizedBox(height: 20),
            Text(_status, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}