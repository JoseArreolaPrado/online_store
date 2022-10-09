import 'package:flutter/material.dart';
import 'package:online_store/services/utils.dart';
import 'package:online_store/widgets/categoires_widget.dart';
import 'package:online_store/widgets/text_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final utils = Utils(context);
    Color color = utils.color;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: TextWidget(
          text: 'Categories',
          color: color,
          textSize: 24,
          isTitle: true,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 240 / 250,
          mainAxisSpacing: 10,
          crossAxisSpacing: 19,
          children: List.generate(6, (index) {
            return CategoriesWidget();
          }),
        ),
      ),
    );
  }
}
