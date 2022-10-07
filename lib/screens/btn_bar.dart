import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:online_store/provider/dark_theme_provider.dart';
import 'package:online_store/screens/categories.dart';
import 'package:online_store/screens/home.dart';
import 'package:online_store/screens/user.dart';
import 'package:provider/provider.dart';

import 'cart.dart';

class BottonBarScreen extends StatefulWidget {
  const BottonBarScreen({Key? key}) : super(key: key);

  @override
  State<BottonBarScreen> createState() => _BottonBarScreenState();
}

class _BottonBarScreenState extends State<BottonBarScreen> {
  int _selectedIndex = 0;

  final List<Map<String, dynamic>> _pages = [
    // {'page': HomeScreen(), 'title': 'Home'},
    // {'page': CategoriesScreen(), 'title': 'Categories'},
    // {'page': CartScreen(), 'title': 'Cart'},
    // {'page': UserScreen(), 'title': 'User'},
  ];

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    bool _isDark = themeState.getDarkTheme;
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(_pages[_selectedIndex]['title']),
      // ),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: _isDark ? Theme.of(context).cardColor : Colors.white,
        onTap: _selectedPage,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        unselectedItemColor: _isDark ? Colors.white10 : Colors.black12,
        selectedItemColor: _isDark ? Colors.lightBlue[200] : Colors.black87,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 0 ? IconlyBold.home : IconlyLight.home),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(_selectedIndex == 0
                  ? IconlyLight.category
                  : IconlyBold.category),
              label: "Categories"),
          BottomNavigationBarItem(
              icon:
                  Icon(_selectedIndex == 0 ? IconlyLight.buy : IconlyBold.buy),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(
                  _selectedIndex == 0 ? IconlyLight.user2 : IconlyBold.user2),
              label: "User"),
        ],
      ),
    );
  }
}
