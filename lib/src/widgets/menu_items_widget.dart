// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  const MenuItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Inicio',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'home');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.shop,
              color: Colors.white,
            ),
            title: Text(
              'Mis Compras',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.pushReplacementNamed(context, 'page2');
            },
          ),
          ListTile(
            leading: Icon(
              Icons.person,
              color: Colors.white,
            ),
            title: Text(
              'Perfil',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            title: Text(
              'Configuraciones',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.logout,
              color: Colors.white,
            ),
            title: Text(
              'Salir',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
