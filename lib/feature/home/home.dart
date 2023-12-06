import 'package:ayana_web/feature/home/widget/home_bottom_navigation_bar.dart';
import 'package:ayana_web/feature/home/widget/home_carousel.dart';
import 'package:ayana_web/feature/home/widget/home_gallery_option.dart';
import 'package:ayana_web/feature/home/widget/home_menu.dart';
import 'package:flutter/material.dart';
import '../../common/assets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Image.asset(Assets.logo),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            HomeMenu(),
            Container(
              color: Colors.white,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 42,
                  ),
                  Text(
                    "Get Inspired",
                    style: TextStyle(
                        color: Color(0XFF785A00),
                        fontSize: 22,
                        fontWeight: FontWeight.w700),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Based on what’s trending right now",
                    style: TextStyle(
                      color: Color(0XFF4D4639),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  HomeGalleryOption(
                    selectedItem: "BUCKET LIST",
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  HomeCarousel(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const HomeBottomNavigationBar(),
    );
  }
}
