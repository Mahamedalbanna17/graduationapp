// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/utils/theme.dart';
import 'package:e_commerce_app/view/screens/auth/login_screen.dart';
import 'package:e_commerce_app/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
    children: [
      SizedBox(
        height: 40,
      ),
      Center(
        child: Image.asset(
          'assets/images/Ellipse 1.png',
          fit: BoxFit.cover,
        ),
      ),
      SizedBox(
        height: 20,
      ),
      Textutils(
          color: Colors.black,
          fontSize: 50,
          fontWeight: FontWeight.bold,
          text: 'طارئ',
          underline: TextDecoration.none),
      SizedBox(
        height: 70,
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: ElevatedButton(
            onPressed: () {
                Get.offNamed(Routes.LoginScreen);
            },
            child: Textutils(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.normal,
                text: 'Login',
                underline: TextDecoration.none),
            style: ElevatedButton.styleFrom(
                minimumSize: Size(238, 70),
                backgroundColor: Color.fromRGBO(60, 54, 54, 1)),
          ),
        ),
      ),
      SizedBox(
        height: 30,
      ),
      ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: ElevatedButton(
          onPressed: () {
            Get.offNamed(Routes.SignUpScreen);
          },
          child: Textutils(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.normal,
              text: 'Sign Up',
              underline: TextDecoration.none),
          style: ElevatedButton.styleFrom(
            minimumSize: Size(238, 70),
            backgroundColor: Color.fromRGBO(215, 32, 32, 1),
          ),
        ),
      ),
      SizedBox(height: 70,),
      // Textutils(
      //     color: Color.fromRGBO(199, 22, 22, 1),
      //     fontSize: 20,
      //     fontWeight: FontWeight.normal,
      //     text: 'continue without any account?',
      //     underline: TextDecoration.none)
    ],
      ),
    );
  }
}
