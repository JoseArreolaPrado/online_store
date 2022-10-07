import 'package:flutter/cupertino.dart';
import 'package:online_store/services/dark_theme_pref.dart';

class DarkThemeProvider with ChangeNotifier {
  DarkThemePrefs darkThemePrefs = DarkThemePrefs();
  bool _darkTheme = false;
  bool get getDarkTheme => _darkTheme;
  set setDarkTheme(bool value) {
    _darkTheme = value;
    darkThemePrefs.setDarkThem(value);
    notifyListeners();
  }
}
