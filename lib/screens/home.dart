import 'package:flutter/material.dart';
import 'package:online_store/provider/dark_theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final themState = Provider.of<DarkThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: SwitchListTile(
          value: themState.getDarkTheme,
          onChanged: (bool value) {
            setState(() {
              themState.setDarkTheme = value;
            });
          },
          title: Text('Theme'),
          secondary: Icon(themState.getDarkTheme
              ? Icons.dark_mode_outlined
              : Icons.light_mode_outlined),
        ),
      ),
    );
  }
}
