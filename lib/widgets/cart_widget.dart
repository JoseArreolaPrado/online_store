import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_store/innser_screens/feeds_screen.dart';
import 'package:online_store/widgets/text_widget.dart';

import '../services/utils.dart';

class CartWidget extends StatefulWidget {
  const CartWidget({super.key});

  @override
  State<CartWidget> createState() => _CartWidgetState();
}

class _CartWidgetState extends State<CartWidget> {
  @override
  Widget build(BuildContext context) {
    Color color = Utils(context).color;
    Size size = Utils(context).getScreenSize;
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

    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                children: [
                  Container(
                    height: size.height * .15,
                    width: size.width * .35,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(12)),
                    child: FancyShimmerImage(
                      imageUrl:
                          'https://s.cornershopapp.com/product-images/2429181.jpg?versionId=1YOHJ9AeP_sHkg_15kOMjlZjdi28IAib',
                      height: size.width * 0.2,
                      width: size.width * 0.2,
                      boxFit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextWidget(
                        text: 'Title',
                        color: color,
                        textSize: 20,
                        isTitle: true,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SizedBox(
                        width: size.width * 0.3,
                        child: Row(
                          children: [
                            _quantityController(
                              color: Colors.red,
                              function: () {},
                              icon: CupertinoIcons.minus,
                            ),
                            SizedBox(width: 10),
                            Flexible(
                              flex: 1,
                              child: TextField(
                                controller: _quantityTextController,
                                keyboardType: TextInputType.number,
                                maxLines: 1,
                                decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(),
                                  ),
                                ),
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp('[0-9]'))
                                ],
                                onChanged: ((value) {
                                  setState(() {
                                    if (value.isEmpty) {
                                      _quantityTextController.text = '1';
                                    }
                                  });
                                }),
                              ),
                            ),
                            SizedBox(width: 10),
                            _quantityController(
                              color: Colors.green,
                              function: () {},
                              icon: CupertinoIcons.plus,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _quantityController extends StatelessWidget {
  final Color color;
  final Function() function;
  final IconData icon;

  _quantityController({
    required this.color,
    required this.function,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 2,
      child: Material(
        color: color,
        borderRadius: BorderRadius.circular(12),
        child: InkWell(
          borderRadius: BorderRadius.circular(12),
          onTap: function,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              icon,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
