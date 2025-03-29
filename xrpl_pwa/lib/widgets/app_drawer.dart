import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  final String currentRoute;
  const AppDrawer({super.key, required this.currentRoute});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            child: Text('XRPL PWA Menu', style: TextStyle(color: Colors.white, fontSize: 24)),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            selected: currentRoute == '/home',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/home');
            },
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About'),
            selected: currentRoute == '/about',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/about');
            },
          ),ListTile(
            leading: const Icon(Icons.account_balance_wallet),
            title: const Text('Account'),
            selected: currentRoute == '/account',
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/account');
            },
          ),
        ],
      ),
    );
  }
}