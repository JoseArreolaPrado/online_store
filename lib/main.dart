import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_store/const/theme_data.dart';
import 'package:online_store/innser_screens/feeds_screen.dart';
import 'package:online_store/innser_screens/on_sale_screens.dart';
import 'package:online_store/provider/dark_theme_provider.dart';
import 'package:online_store/screens/btn_bar.dart';
import 'package:online_store/screens/product_details_screen.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DarkThemeProvider themeChangeProvider = DarkThemeProvider();

  void getCurrentAppTheme() async {
    themeChangeProvider.setDarkTheme =
        await themeChangeProvider.darkThemePrefs.getTheme();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => themeChangeProvider),
        ],
        child: Consumer<DarkThemeProvider>(
          builder: ((context, themeProvider, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: Styles.themeData(themeProvider.getDarkTheme, context),
              home: const BottomBarScreen(),
              routes: {
                OnSaleScreen.routeName: (context) => const OnSaleScreen(),
                FeedsScreen.routeName: (context) => const FeedsScreen(),
                ProductDetailsScreen.routeName: (context) =>
                    const ProductDetailsScreen()
              },
            );
          }),
        ));
  }
}
