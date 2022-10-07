import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:online_store/widgets/text_widget.dart';
import 'package:provider/provider.dart';

import '../provider/dark_theme_provider.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    final themState = Provider.of<DarkThemeProvider>(context);
    final Color color = themState.getDarkTheme ? Colors.white : Colors.black;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Title'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 15,
                ),
                RichText(
                  text: TextSpan(
                    text: 'Hi,     ',
                    style: const TextStyle(
                      color: Colors.cyan,
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Name',
                          style: TextStyle(
                            color: color,
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              print('Pressed');
                            }),
                    ],
                  ),
                ),
                TextWidget(
                  text: 'Email@email.com',
                  color: color,
                  textSize: 18,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 2,
                ),
                const SizedBox(
                  height: 20,
                ),
                _listTiles(
                  title: 'Adress',
                  subtitle: 'My subtitle',
                  icon: IconlyBold.profile,
                  onPressed: () {},
                  color: color,
                ),
                _listTiles(
                  title: 'Orders',
                  icon: IconlyBold.bag,
                  onPressed: () {},
                  color: color,
                ),
                _listTiles(
                    title: 'Wishlist',
                    icon: IconlyBold.heart,
                    onPressed: () {},
                    color: color),
                _listTiles(
                    title: 'Forget passowrd',
                    icon: IconlyBold.unlock,
                    onPressed: () {},
                    color: color),
                _listTiles(
                  title: 'Viewed',
                  icon: IconlyBold.show,
                  onPressed: () {},
                  color: color,
                ),
                _listTiles(
                  title: 'Logout',
                  icon: IconlyBold.logout,
                  onPressed: () {},
                  color: color,
                ),
                const SizedBox(height: 40),
                SwitchListTile(
                  value: themState.getDarkTheme,
                  onChanged: (bool value) {
                    setState(() {
                      themState.setDarkTheme = value;
                    });
                  },
                  title: TextWidget(
                    text: themState.getDarkTheme ? 'Dark mode' : 'Light mode',
                    color: color,
                    textSize: 22,
                  ),
                  secondary: Icon(themState.getDarkTheme
                      ? Icons.dark_mode_outlined
                      : Icons.light_mode_outlined),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget _listTiles({
  required String title,
  String? subtitle,
  required IconData icon,
  required Function onPressed,
  required Color color,
}) {
  return ListTile(
    title: TextWidget(
      color: color,
      text: title,
      textSize: 22,
    ),
    subtitle: TextWidget(
      color: color,
      text: subtitle ?? '',
      textSize: 18,
    ),
    leading: Icon(icon),
    trailing: const Icon(IconlyLight.arrowRight2),
    onTap: (() => onPressed),
  );
}
