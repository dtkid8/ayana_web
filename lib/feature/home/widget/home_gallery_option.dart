import 'package:flutter/material.dart';

class HomeGalleryOption extends StatefulWidget {
  final String selectedItem;
  const HomeGalleryOption({
    super.key,
    this.selectedItem = "",
  });

  @override
  State<HomeGalleryOption> createState() => _HomeGalleryOptionState();
}

class _HomeGalleryOptionState extends State<HomeGalleryOption> {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          "BUCKET LIST",
          "KIDS",
          "WELLNESS",
          "ROMANCE",
        ]
            .map((e) => TextSpan(
                  text: e,
                  style: e == widget.selectedItem
                      ? const TextStyle(
                          color: Color(0XFF251A00),
                          fontSize: 14,
                          fontWeight: FontWeight.w700,
                        )
                      : const TextStyle(
                          color: Color(0XFF7F7667),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                  children: const [
                    TextSpan(
                      text: " / ",
                      style: TextStyle(
                        fontWeight: FontWeight.w300,
                        color: Color(0XFFBBA987),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ))
            .toList(),
      ),
    );
  }
}
