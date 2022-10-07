import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:online_store/screens/categories.dart';
import 'package:online_store/screens/home.dart';
import 'package:online_store/screens/user.dart';

import 'cart.dart';

class BottonBarScreen extends StatefulWidget {
  const BottonBarScreen({Key? key}) : super(key: key);

  @override
  State<BottonBarScreen> createState() => _BottonBarScreenState();
}

class _BottonBarScreenState extends State<BottonBarScreen> {
  int _selectedIndex = 0;

  final List _pages = const [
    HomeScreen(),
    CategoriesScreen(),
    CartScreen(),
    UserScreen(),
  ];

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectedPage,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 0 ? IconlyBold.home : IconlyLight.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 0
                  ? IconlyBold.category
                  : IconlyLight.category),
              label: "Categories"),
          BottomNavigationBarItem(
              icon:
                  Icon(_selectedIndex == 0 ? IconlyBold.buy : IconlyLight.buy),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 0 ? IconlyBold.user2 : IconlyLight.user2),
              label: "User"),
        ],
      ),
    );
  }
}
