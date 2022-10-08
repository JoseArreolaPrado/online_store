import 'package:flutter/material.dart';
import 'package:online_store/provider/dark_theme_provider.dart';
import 'package:online_store/widgets/text_widget.dart';
import 'package:provider/provider.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themState = Provider.of<DarkThemeProvider>(context);
    double _screenWidth = MediaQuery.of(context).size.width;
    final Color color = themState.getDarkTheme ? Colors.white : Colors.black;
    return InkWell(
      onTap: (() {
        print('Categorie pressed');
      }),
      child: Container(
        height: _screenWidth * 0.6,
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.1),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.red.withOpacity(0.7), width: 2),
        ),
        child: Column(
          children: [
            Container(
              height: _screenWidth * 0.3,
              width: _screenWidth * 0.3,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/cat/veg.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            TextWidget(
              text: 'Veggies',
              color: color,
              textSize: 20,
              isTitle: true,
            )
          ],
        ),
      ),
    );
  }
}
