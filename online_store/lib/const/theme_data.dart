import 'package:flutter/material.dart';

class Styles {
  static ThemeData themeData(bool isDarkTheme, BuildContext context) {
    final colorCheck = isDarkTheme ? Colors.black : Colors.white;
    return ThemeData(
        scaffoldBackgroundColor: colorCheck,
        primaryColor: Colors.blue,
        colorScheme: ThemeData().colorScheme.copyWith(
            secondary: colorCheck,
            brightness: isDarkTheme ? Brightness.dark : Brightness.light),
        cardColor: colorCheck,
        canvasColor: isDarkTheme ? Colors.black : Colors.grey[50],
        buttonTheme: Theme.of(context).buttonTheme.copyWith(
            colorScheme: isDarkTheme
                ? const ColorScheme.dark()
                : const ColorScheme.light()));
  }
}
