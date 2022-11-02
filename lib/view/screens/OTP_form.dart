// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/utils/theme.dart';
import 'package:e_commerce_app/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../utils/my_string.dart';

class OtpForm extends StatelessWidget {
  final TextEditingController Ph1controller = TextEditingController();
  final TextEditingController Ph2controller = TextEditingController();
  final TextEditingController Ph3controller = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // ignore: prefer_const_literals_to_create_immutables
      body: Form(
          key: formKey,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 50,),
                  Image.asset('assets/images/onboard1.png',height: 200),
                  SizedBox(height: 10,),
                  TextFormField(
                    controller: Ph1controller,
                    onSaved: (_) {},
                    onChanged: (value) {},
                    validator: (value) {
                      if (!RegExp(validationNumber).hasMatch(value!)) {
                        return "Invalid Phone ";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.left,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: 'Phone1',
                      prefixIcon:
                          Icon(Icons.phone_android, color: mainColor),

                      fillColor: Colors.grey.shade300,

                      // ignore: prefer_const_constructors
                      hintStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    onSaved: (_) {},
                    controller: Ph2controller,
                    onChanged: (value) {},
                    validator: (value) {
                      if (!RegExp(validationNumber).hasMatch(value!)) {
                        return "Invalid Phone ";
                      } else {
                        return null;
                      }
                    },
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.left,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      hintText: 'Phone2',
                      prefixIcon: Icon(Icons.phone_android, color: mainColor),

                      // ignore: prefer_const_constructors
                      hintStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    onSaved: (_) {},
                    validator: (value) {
                      if (!RegExp(validationNumber).hasMatch(value!)) {
                        return "Invalid Phone ";
                      } else {
                        return null;
                      }
                    },
                    controller: Ph3controller,
                    onChanged: (value) {},
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.left,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade300,
                      hintText: 'Phone3',
                      prefixIcon: Icon(Icons.phone_android, color: mainColor),

                      // ignore: prefer_const_constructors
                      hintStyle: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      filled: true,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ElevatedButton(
                          onPressed: () {
                            Get.toNamed(Routes.WelcomeScreen);
                          },
                          child: Textutils(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              text: 'Skip',
                              underline: TextDecoration.none),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 60),
                              backgroundColor: mainColor),
                        ),
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: ElevatedButton(
                          onPressed: () {
                            if (formKey.currentState!.validate()) {
                              Get.toNamed(Routes.WelcomeScreen);
                            }
                          },
                          child: Textutils(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              text: 'Confirm',
                              underline: TextDecoration.none),
                          style: ElevatedButton.styleFrom(
                              minimumSize: Size(150, 60),
                              backgroundColor: mainColor),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          )),
    );
  }
}
