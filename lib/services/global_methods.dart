import 'package:flutter/material.dart';
import 'package:online_store/innser_screens/on_sale_screens.dart';

class GlobalMethods {
  static navigateTo(
      {required BuildContext context, required String routeName}) {
    Navigator.pushNamed(context, routeName);
  }
}
