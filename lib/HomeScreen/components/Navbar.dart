import 'package:ciceksepetireplica/CategoriesScreen/CategoriesScreen.dart';
import 'package:ciceksepetireplica/FavoritesScreen/FavoritesScreen.dart';
import 'package:ciceksepetireplica/HomeScreen/HomeScreen.dart';
import 'package:ciceksepetireplica/MyCartScreen/MyCartScreen.dart';
import 'package:ciceksepetireplica/ProfilScreen/ProfilScreen.dart';
import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int selectedItemIndex = 0;
  final List _children = [
    HomeScreen(),
    CategoriesScreen(),
    FavoritesScreen(),
    MyCartScreen(),
    ProfilScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: _children.elementAt(selectedItemIndex),
      bottomNavigationBar: Row(
        children: [
          buildNavbar(Icons.home, 0),
          buildNavbar(Icons.favorite_border_outlined, 1),
          buildNavbar(Icons.local_see, 2),
          buildNavbar(Icons.local_grocery_store, 3),
          buildNavbar(Icons.person, 4),
        ],
      ),
    );
  }

  Widget buildNavbar(
    IconData icons,
    int index,
  ) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedItemIndex = index;
        });
      },
      child: Container(
        height: 68,
        width: MediaQuery.of(context).size.width / 5,
        decoration: index == selectedItemIndex
            ? BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 2, color: Colors.black)),
                gradient: LinearGradient(
                  colors: [
                    Colors.pink.withOpacity(0.3),
                    Colors.pink.withOpacity(0.015),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              )
            : BoxDecoration(),
        child: Icon(
          icons,
          color: index == selectedItemIndex ? Colors.grey : Colors.black,
        ),
      ),
    );
  }
}
