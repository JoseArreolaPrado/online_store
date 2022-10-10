import 'package:flutter/material.dart';
import 'package:online_store/services/utils.dart';
import 'package:online_store/widgets/text_widget.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final Color color = Utils(context).color;
    return FittedBox(
      child: Row(
        children: [
          TextWidget(
            text: '1.59',
            color: Colors.green,
            textSize: 22,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(
            '2.59\$',
            style: TextStyle(
              fontSize: 15,
              color: color,
              decoration: TextDecoration.lineThrough,
            ),
          )
        ],
      ),
    );
  }
}
