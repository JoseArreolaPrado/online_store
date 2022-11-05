import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_store/innser_screens/product_details_screen.dart';
import 'package:online_store/services/global_methods.dart';
import 'package:online_store/widgets/heart_button_widget.dart';
import 'package:online_store/widgets/price_widget.dart';
import 'package:online_store/widgets/text_widget.dart';

import '../services/utils.dart';

class FeedsWidget extends StatefulWidget {
  const FeedsWidget({super.key});

  @override
  State<FeedsWidget> createState() => _FeedsWidgetState();
}

class _FeedsWidgetState extends State<FeedsWidget> {
  final _quantityTextController = TextEditingController();
  @override
  void initState() {
    _quantityTextController.text = '1';
    super.initState();
  }

  @override
  void dispose() {
    _quantityTextController.dispose();
    super.dispose();
  }

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
          onTap: (() {
            GlobalMethods.navigateTo(
                context: context, routeName: ProductDetails.routeName);
          }),
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextWidget(
                      text: 'Title',
                      color: color,
                      textSize: 20,
                      isTitle: true,
                    ),
                    const HeartButton()
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 4,
                      child: PriceWidget(
                        isOnSale: true,
                        price: 5.9,
                        salePrice: 2.99,
                        textPrice: _quantityTextController.text,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Row(
                        children: [
                          Flexible(
                            flex: 1,
                            child: FittedBox(
                              child: TextWidget(
                                text: 'kg',
                                color: color,
                                textSize: 18,
                                isTitle: true,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Flexible(
                              flex: 2,
                              child: TextFormField(
                                controller: _quantityTextController,
                                key: const ValueKey('10'),
                                style: TextStyle(color: color, fontSize: 18),
                                keyboardType: TextInputType.number,
                                maxLines: 1,
                                enabled: true,
                                onChanged: (value) {
                                  setState(() {});
                                },
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp('[0-9.]'))
                                ],
                              ))
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const Spacer(),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  // ignore: sort_child_properties_last
                  child: TextWidget(
                    text: 'Add to cart',
                    color: color,
                    textSize: 20,
                    maxLines: 1,
                  ),
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Theme.of(context).cardColor,
                      ),
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12))))),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
