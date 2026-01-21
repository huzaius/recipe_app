import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:recipe_app/pages/cart_page.dart';
import 'package:recipe_app/pages/favorites_page.dart';
import 'package:recipe_app/pages/profile_page.dart';

import 'homescreen.dart';

class BottomnavScreen extends StatefulWidget {
  const BottomnavScreen({super.key});

  @override
  State<BottomnavScreen> createState() => _BottomnavScreenState();
}

class _BottomnavScreenState extends State<BottomnavScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MyHomeScreen(),
    CartPage(),
    FavoritesPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.red,
          boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 1)],
        ),

        child: BottomNavigationBar(
          onTap: _onItemTapped,
          iconSize: 28,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          currentIndex: _selectedIndex,
          backgroundColor: Colors.white,
          fixedColor: Colors.green,

          items: [
            BottomNavigationBarItem(icon: Icon(Iconsax.home), label: "Home"),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined),
              label: "Chart",
            ),
            BottomNavigationBarItem(
              icon: Icon(Iconsax.heart),
              label: "Favorites",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline_rounded),
              label: "Profile",
            ),
          ],
        ),
      ),
    );
  }
}
