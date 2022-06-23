import 'package:flutter/material.dart';
import 'package:foodpedia/utils/colors.dart';
import 'package:foodpedia/views/screens/homeScreen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return   GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: UiColors.primaryThemeClr
      ),
      debugShowCheckedModeBanner: false,
      home:  HomeScreen(),
    );
  }
}


