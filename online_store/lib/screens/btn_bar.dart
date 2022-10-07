import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
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
  List _pages = [HomeScreen(), CategoriesScreen(), CartScreen(), UserScreen()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(),
    );
  }
}
