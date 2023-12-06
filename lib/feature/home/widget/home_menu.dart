import 'package:ayana_web/common/assets.dart';
import 'package:flutter/material.dart';

class HomeMenuModel {
  final String title;
  final String image;
  HomeMenuModel({required this.title, required this.image});
}

class HomeMenu extends StatelessWidget {
  HomeMenu({super.key});
  final List<HomeMenuModel> homeMenu = [
    HomeMenuModel(title: "Dining", image: Assets.menuDining),
    HomeMenuModel(title: "Spa", image: Assets.menuSpa),
    HomeMenuModel(title: "Experiences", image: Assets.menuExperiences),
    HomeMenuModel(title: "Tram", image: Assets.menuTram),
    HomeMenuModel(
      title: "Room Service",
      image: Assets.menuRoomService,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      color: const Color(0XFFF5EEEB),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0,
        ),
        itemCount: homeMenu.length,
        itemBuilder: ((context, index) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(homeMenu[index].image,
                width: 40,
                height: 40,
                ),
                const SizedBox(height: 14,),
                Text(homeMenu[index].title,
                style: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 12,
                  color: Color(0XFF251A00)
                ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
