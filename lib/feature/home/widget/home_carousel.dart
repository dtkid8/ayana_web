import 'package:ayana_web/common/assets.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarousel extends StatelessWidget {
  const HomeCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      carouselController: CarouselController(),
      itemCount: 3,
      options: CarouselOptions(
          enableInfiniteScroll: true,
          height: 368,
          enlargeCenterPage: true,
          viewportFraction: 0.78,
          enlargeStrategy: CenterPageEnlargeStrategy.zoom),
      itemBuilder: (context, index, realIdx) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 2),
          width: 268,
          height: 368,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  Assets.carousel,
                  fit: BoxFit.cover,
                ),
                Container(
                  height: 368,
                  width: 268,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(12),
                    gradient: LinearGradient(
                      colors: [
                        const Color(0XFF2B1F17).withOpacity(0.7),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Spacer(),
                      const Text(
                        "Forest Pool",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontSize: 24,
                        ),
                      ),
                      const Text(
                        "Enjoy poolside dining among the treetops for truly memorable meals and cocktails.",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Image.asset(
                        Assets.arrow,
                        width: 46,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
