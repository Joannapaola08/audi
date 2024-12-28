import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  void _logout(BuildContext context) {

    print('Cerrando sesión...');
    Navigator.of(context).pushReplacementNamed('login');
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text('joyce'),
              accountEmail: Text('jppereza@utbispuebla.edu.mx'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/logo.png',
                width: 90,
                height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.lightGreen,
              image: DecorationImage(image: AssetImage('assets/alcen.jpg'),
                fit: BoxFit.cover)),
          ),
          ListTile(
            leading: const Icon(Icons.share),
            title: const Text('Compartir'),
            onTap: () => print('Compartir'),
          ),
          ListTile(
            leading: const Icon(Icons.help),
            title: const Text('Ayuda'),
            onTap: () => print('Ayuda'),
          ),
          Divider(),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Salir'),
            onTap: () => _logout(context),
          ),
        ],
      )
    );
  }
}
