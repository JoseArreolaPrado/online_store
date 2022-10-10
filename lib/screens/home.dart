import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:online_store/provider/dark_theme_provider.dart';
import 'package:online_store/services/utils.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _offerImages = [
    'assets/offers/Offer1.jpg',
    'assets/offers/Offer2.jpg',
    'assets/offers/Offer3.jpg',
    'assets/offers/Offer4.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    final themState = Provider.of<DarkThemeProvider>(context);
    Size size = Utils(context).getScreenSize;
    return Scaffold(
      body: SizedBox(
        height: size.height * 0.30,
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(
              _offerImages[index],
              fit: BoxFit.fill,
            );
          },
          autoplay: true,
          itemCount: 4,
          pagination: const SwiperPagination(
            alignment: Alignment.bottomCenter,
            builder: DotSwiperPaginationBuilder(
                color: Colors.white, activeColor: Colors.red),
          ),
        ),
      ),
    );
  }
}
