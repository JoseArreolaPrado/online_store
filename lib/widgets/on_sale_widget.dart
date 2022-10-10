import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:online_store/widgets/price_widget.dart';
import 'package:online_store/widgets/text_widget.dart';

import '../services/utils.dart';

class OnSaleWidget extends StatefulWidget {
  const OnSaleWidget({super.key});

  @override
  State<OnSaleWidget> createState() => _OnSaleWidgetState();
}

class _OnSaleWidgetState extends State<OnSaleWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = Utils(context).getScreenSize;
    final theme = Utils(context).getTheme;
    final Color color = Utils(context).color;
    return Material(
      color: Theme.of(context).cardColor.withOpacity(0.9),
      borderRadius: BorderRadius.circular(12),
      child: InkWell(
        borderRadius: BorderRadius.circular(12),
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://s.cornershopapp.com/product-images/2429181.jpg?versionId=1YOHJ9AeP_sHkg_15kOMjlZjdi28IAib',
                    height: size.height * 0.22,
                    fit: BoxFit.fill,
                  ),
                  Column(
                    children: [
                      TextWidget(
                        text: '1kg',
                        color: color,
                        textSize: 22,
                        isTitle: true,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Icon(
                              IconlyLight.bag2,
                              size: 22,
                              color: color,
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              print('Print heart');
                            },
                            child: Icon(
                              IconlyLight.heart,
                              size: 22,
                              color: color,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              const PriceWidget(),
              const SizedBox(height: 5),
              TextWidget(
                text: 'Product title',
                color: color,
                textSize: 16,
                isTitle: true,
              ),
              const SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
