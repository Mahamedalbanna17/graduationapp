// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:e_commerce_app/logic/controllers/main_controller.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/utils/theme.dart';
import 'package:e_commerce_app/view/screens/Home_screen.dart';
import 'package:e_commerce_app/view/screens/setting_screen.dart';
import 'package:e_commerce_app/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class mainScreen extends StatefulWidget {
  mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  List imgList = [
    'assets/images/onboard1.png',
    'assets/images/onboard2.png',
    'assets/images/onboard3.png',
  ];
  List<Widget> screens = <Widget>[
    HomeScreen(),
    SettingsScreen(),
  ];

  int? currentIndex;
  int? itemIndex = 1;
  final controller = Get.find<mainConrtoller>();


  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
          backgroundColor: Colors.white,
          body: IndexedStack(
            index: controller.itemIndex.value,
            children: controller.items.value,
          ),
          bottomNavigationBar: ConvexAppBar(
            backgroundColor: Colors.grey.shade200,
            activeColor:mainColor,
            color: Colors.black,
            items: [
              TabItem(icon: Icons.person_outline, title: 'Profile'),
              TabItem(icon: Icons.home_outlined, title: 'Home'),
              TabItem(icon: Icons.settings_outlined, title: 'Settings'),
            ],
            initialActiveIndex: 1,
            onTap: (index) {
              controller.itemIndex.value = index;
            },

            // )
            // bottomNavigationBar: BottomNavigationBar(currentIndex: 1,
            //   items: [
            //   BottomNavigationBarItem(icon: Icon(Icons.person),label: 'Profile'),
            //   BottomNavigationBarItem(icon: Icon(Icons.home),label: 'Home'),
            //   BottomNavigationBarItem(icon: Icon(Icons.settings_outlined),label: 'Settings')

            // ],onTap: (index) {
            //   controller.itemIndex.value=index;
            // },
            // ),
          ));
    });
  }

  Container buildContainer(index) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: currentIndex == index ? Colors.red : Colors.grey.shade400),
    );
  }
  // void changeItem(int index){
  //   print(itemIndex);
  //   setState(() {

  //     itemIndex=index;

  //   });
  // }
}
