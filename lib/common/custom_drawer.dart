import 'package:flutter/material.dart';
import 'package:loja_virtual/common/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
          const DrawerTile(iconData: Icons.home, title: 'Inicio', page: 0),
          const DrawerTile(iconData: Icons.list, title: 'Produtos', page: 1),
          const DrawerTile(
              iconData: Icons.library_books_outlined,
              title: 'Meus Pedidos',
              page: 2),
          const DrawerTile(
              iconData: Icons.location_on, title: 'Lojas', page: 3),
        ],
      ),
    );
  }
}
