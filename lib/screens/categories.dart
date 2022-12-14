import 'package:flutter/material.dart';
import 'package:online_store/services/utils.dart';
import 'package:online_store/widgets/categoires_widget.dart';
import 'package:online_store/widgets/text_widget.dart';

class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({Key? key}) : super(key: key);

  List<Color> gridColor = [
    Colors.green,
    Colors.green,
    Colors.grey,
    Colors.red,
    Colors.brown,
    Colors.blue,
  ];
  final List<Map<String, dynamic>> catInfo = [
    {
      'imgPath': 'assets/cat/veg.png',
      'catText': 'Veggies',
    },
    {
      'imgPath': 'assets/cat/fruits.png',
      'catText': 'Fruits',
    },
    {
      'imgPath': 'assets/cat/dairy.png',
      'catText': 'Dairy',
    },
    {
      'imgPath': 'assets/cat/sea.png',
      'catText': 'Sea Food',
    },
    {
      'imgPath': 'assets/cat/crerals.png',
      'catText': 'Cerals',
    },
    {
      'imgPath': 'assets/cat/cleaning.png',
      'catText': 'Cleaning products',
    },
  ];

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
          mainAxisSpacing: 10, //Horizontal spacing
          crossAxisSpacing: 19, //Vertical spacing
          children: List.generate(6, (index) {
            return CategoriesWidget(
              catText: catInfo[index]['catText'],
              backgroundColor: gridColor[index],
              imgPath: catInfo[index]['imgPath'],
            );
          }),
        ),
      ),
    );
  }
}
