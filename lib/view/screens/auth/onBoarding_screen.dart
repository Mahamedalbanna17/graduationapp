// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:ui';

import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/utils/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, actions: [
        TextButton(
            onPressed: () {
              Timer(Duration(seconds: 3),
                  () => Get.offNamed(Routes.OtpForm));
            },
            // ignore: prefer_const_constructors
            child: Text(
              "Skip",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
            ))
      ]),
      body: IntroductionScreen(
        pages: [
          PageViewModel(
            title: "Title of first page",
            bodyWidget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Click on "),
                Icon(Icons.edit),
                Text(" to edit a post"),
              ],
            ),
            image: Center(
                child: Image.asset(filterQuality: FilterQuality.low,
              "assets/images/onboard1.png",
              fit: BoxFit.fitWidth,
            )),
          ),
          PageViewModel(
            title: "Title of first page",
            bodyWidget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Click on "),
                Icon(Icons.edit),
                Text(" to edit a post"),
              ],
            ),
            image: Center(
                child: Image.asset(
              'assets/images/onboard3.png',
            )),
          ),
          PageViewModel(
            title: "Title of first page",
            bodyWidget: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Click on "),
                Icon(Icons.edit),
                Text(" to edit a post"),
              ],
            ),
            image:  Center(child: Image.asset('assets/images/onboard2.png',colorBlendMode: BlendMode.color),),
          ),
        ],
        onDone: () {
          Timer(Duration(seconds: 2), () => Get.offNamed(Routes.OtpForm));
        },
        onSkip: () {
          // You can also override onSkip callback
        },
        showBackButton: false,
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward_ios_rounded,
          color: mainColor,
        ),
        done: const Text("Done",
            style: TextStyle(fontWeight: FontWeight.w600, color: mainColor)),
        dotsDecorator: DotsDecorator(
            size: const Size.square(10.0),
            activeSize: const Size(20.0, 10.0),
            activeColor: mainColor,
            color: Colors.black26,
            spacing: const EdgeInsets.symmetric(horizontal: 3.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.0))),
      ),
    ));
  }
}
