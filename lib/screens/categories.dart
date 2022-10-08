import 'package:flutter/material.dart';
import 'package:online_store/widgets/categoires_widget.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CategoriesWidget(),
    );
  }
}
