import 'package:flutter/material.dart';
import 'package:xrpl_pwa/screens/about_page.dart';
import 'package:xrpl_pwa/screens/account_page.dart';
import 'package:xrpl_pwa/screens/home_screen.dart';
import 'package:xrpl_pwa/screens/wallet_setup_screen.dart'; // Import the new homepage

void main() {
  runApp(const XRPWA());
}

class XRPWA extends StatelessWidget {
  const XRPWA({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'XRPL PWA',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home', // Default route
      routes: {
        '/home': (context) => const HomePage(),
        '/about': (context) => const AboutPage(),
        '/account': (context) => const AccountPage(),
        '/wallet_setup': (context) => const WalletSetupScreen(),
      },
    );
  }
}