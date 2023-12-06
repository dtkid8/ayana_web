
import 'package:ayana_web/common/custom_scroll_behavior.dart';
import 'package:flutter/material.dart';
import 'feature/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      scrollBehavior: CustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      title: 'Ayana',
      theme: ThemeData(
        fontFamily: "Ayana",
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: const Home(),
    );
  }
}
