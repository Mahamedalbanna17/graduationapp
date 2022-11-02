
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:e_commerce_app/logic/controllers/shared_controller.dart';
import 'package:e_commerce_app/view/screens/auth/onBoarding_screen.dart';
import 'package:get/get.dart';
import 'package:page_transition/page_transition.dart';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);
   

  final controller =Get.find<SharedController>();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      //  body:EasySplashScreen(logo: Image.asset('assets/images/ambulance.png'),navigator: WelcomeScreen()),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: AnimatedSplashScreen(
              //  splash: 'assets/images/ambulance.png',
              splash: Lottie.asset('assets/81399-alerta.json'),
                nextScreen: OnBoardingScreen(),
                splashIconSize: 300,
                splashTransition: SplashTransition.slideTransition,
                duration: 2500,
                pageTransitionType: PageTransitionType.leftToRight,
                animationDuration: Duration(seconds: 1),
                centered: true,
              ),
            ),
          ),
          // SizedBox(
          //   height: 60,
          // ),
          // Expanded(
          //   child: Textutils(
          //       color: Colors.black,
          //       fontSize: 20,
          //       fontWeight: FontWeight.bold,
          //       text: 'Welcome',
          //       underline: TextDecoration.none),
          // ),
          // Container(margin: EdgeInsets.only(bottom: 15),
          //   child: CircularProgressIndicator(color: Colors.red,))

        ],
      ),
    );
  }
}

