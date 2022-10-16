import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:online_store/widgets/heart_button_widget.dart';
import 'package:online_store/widgets/text_widget.dart';

import '../services/utils.dart';

class FeedsWidget extends StatefulWidget {
  const FeedsWidget({super.key});

  @override
  State<FeedsWidget> createState() => _FeedsWidgetState();
}

class _FeedsWidgetState extends State<FeedsWidget> {
  @override
  Widget build(BuildContext context) {
    Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Material(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(22),
        child: InkWell(
          onTap: (() {}),
          borderRadius: BorderRadius.circular(22),
          child: Column(
            children: [
              FancyShimmerImage(
                imageUrl:
                    'https://s.cornershopapp.com/product-images/2429181.jpg?versionId=1YOHJ9AeP_sHkg_15kOMjlZjdi28IAib',
                height: size.width * 0.2,
                width: size.width * 0.2,
                boxFit: BoxFit.fill,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  children: [
                    TextWidget(
                      text: 'Title',
                      color: color,
                      textSize: 20,
                      isTitle: true,
                    ),
                    HeartButton()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
