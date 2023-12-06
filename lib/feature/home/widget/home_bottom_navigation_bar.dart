import 'package:ayana_web/common/assets.dart';
import 'package:flutter/material.dart';

class HomeBottomNavigationBar extends StatefulWidget {
  const HomeBottomNavigationBar({super.key});

  @override
  State<HomeBottomNavigationBar> createState() =>
      _HomeBottomNavigationBarState();
}

class _HomeBottomNavigationBarState extends State<HomeBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: Color(0XFFF0E9E3),
            width: 1.0,
          ),
        ),
      ),
      child: const Row(
        children: [
          HomeBottonNavigationBarItem(
            title: "Explore",
            image: Assets.navigationBarHome,
            isSelected: true,
          ),
          HomeBottonNavigationBarItem(
            title: "Chat",
            image: Assets.navigationBarChat,
          ),
          HomeBottonNavigationBarItem(
            title: "Map",
            image: Assets.navigationBarMap,
          ),
          HomeBottonNavigationBarItem(
            title: "Profile",
            image: Assets.navigationBarProfile,
          ),
        ],
      ),
    );
  }
}

class HomeBottonNavigationBarItem extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String image;
  const HomeBottonNavigationBarItem({
    super.key,
    this.isSelected = false,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 2,
          ),
          Stack(
            children: [
              isSelected
                  ? Center(
                      child: Container(
                        height: 30,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24.0),
                          color: const Color(0XFFE4F6FC),
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
              Padding(
                padding: const EdgeInsets.only(
                  top: 4,
                ),
                child: Center(
                  child: Image.asset(
                    image,
                    width: 20,
                    height: 20,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            title,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          )
        ],
      ),
    );
  }
}
