import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepOrange.shade900,
              image: DecorationImage(
                image: AssetImage('assets/images/home_bg.jpg'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
              )
            ),
            accountName: const Text(
              'Hamza Rahim Food Restaurant',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.white,
              ),
            ),
            accountEmail: const Text(
              'Premium Pakistani Cuisine',
              style: TextStyle(color: Colors.white70),
            ),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
              ),
              child: const CircleAvatar(
                backgroundImage: AssetImage('assets/images/restaurant_logo.jpg'),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home, color: Colors.deepOrange),
            title: const Text('Home Screen', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/home');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.restaurant_menu, color: Colors.deepOrange),
            title: const Text('Menu List Screen', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/list');
            },
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.photo_library, color: Colors.deepOrange),
            title: const Text('Food Gallery (About)', style: TextStyle(fontWeight: FontWeight.bold)),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/about');
            },
          ),
        ],
      ),
    );
  }
}
