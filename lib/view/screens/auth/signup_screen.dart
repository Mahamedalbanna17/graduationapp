// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/logic/controllers/auth_controller.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/utils/theme.dart';
import 'package:e_commerce_app/view/widgets/auth/auth_button.dart';
import 'package:e_commerce_app/view/widgets/auth/auth_checkWidget.dart';
import 'package:e_commerce_app/view/widgets/auth/auth_text_formFeild.dart';
import 'package:e_commerce_app/view/widgets/auth/containerunder.dart';
import 'package:e_commerce_app/view/widgets/auth/my_string.dart';
import 'package:e_commerce_app/view/widgets/text_utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();

  final controller = Get.find<AuthController>();

  final TextEditingController namecontroller = TextEditingController();
  final TextEditingController emailcontroller = TextEditingController();
  final TextEditingController passcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection:Axis.vertical ,
        child: Column(
          children: [
            Container(
              width: double.infinity,
              
              child: Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 30),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Textutils(
                              color: mainColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              text: "SIGN",
                              underline: TextDecoration.none),
                          const SizedBox(
                            width: 2.5,
                          ),
                          Textutils(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              text: "UP",
                              underline: TextDecoration.none)
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      AuthTextFormField(
                        controller: namecontroller,
                        obscureText: false,
                        prefixIcon: Image.asset("assets/images/user.png",color: Color.fromRGBO(215,32,32,1),),
                        suffixIcon: Text(''),
                        validator: (value) {
                          if (value.toString().length <= 2 ||
                              !RegExp(validationName).hasMatch(value)) {
                            return "Enter valid Name";
                          } else {
                            return null;
                          }
                        },
                        hintText: "User Name",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AuthTextFormField(
                        controller: emailcontroller,
                        obscureText: false,
                        prefixIcon: Image.asset("assets/images/email.png",color: Color.fromRGBO(215,32,32,1),),
                        suffixIcon: Text(''),
                        validator: (value) {
                          if (!RegExp(validationEmail).hasMatch(value)) {
                            return "Invalid Email";
                          } else {
                            return null;
                          }
                        },
                        hintText: "Email",
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      GetBuilder<AuthController>(
                        builder: (_) {
                          return AuthTextFormField(
                            controller: passcontroller,
                            obscureText: controller.isVisibility ? false : true,
                            prefixIcon: Image.asset("assets/images/lock.png",color: Color.fromRGBO(215,32,32,1),),
                            suffixIcon: IconButton(
                              onPressed: () {
                                controller.visibility();
                              },
                              icon: controller.isVisibility
                                  ? Icon(
                                      Icons.visibility_off,
                                      color: Colors.black,
                                    )
                                  : Icon(
                                      Icons.visibility,
                                      color: Colors.black,
                                    ),
                            ),
                            validator: (value) {
                              if (value.toString().length < 6) {
                                return "Password should be longer or equal 6 characters";
                              } else {
                                return null;
                              }
                            },
                            hintText: "Password",
                          );
                        },
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      
                   
                      GetBuilder<AuthController>(builder: (_) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Expanded(
                            child: AuthButton(
                                text: 'SIGN UP',
                                onPressed: () {
                                 if (formKey.currentState!.validate()) {
                                    String name = "";
                                    String email = emailcontroller.text.trim();
                                    String password = passcontroller.text;
                                    controller.SingUpUsingFireBase(
                                        name: name,
                                        password: password,
                                        email: email,
                                        );
                                     controller.isCheckBox=true;
                                                  
                                  }
                                }),
                          ),
                        );
                      }),
                      SizedBox(height: 50,),
                       Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {},
                              child: Image.asset("assets/images/Rectangle 8.png")),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/images/google.png",
                              )),
                          SizedBox(
                            width: 20,
                          ),
                          InkWell(
                              onTap: () {},
                              child: Image.asset(
                                "assets/images/Rectangle 7.png",
                              )),
                               SizedBox(
                            width: 20,
                          ),
                          InkWell(
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Image.asset(
                                  "assets/images/Rectangle 9.png",
                                ),
                              )),
                        ],
                                           ),
                    ],
                  ),
                ),
              ),
            ),
            ContainerUnder(
              onPressed: () {
                Get.offNamed(Routes.LoginScreen);
              },
              text: "Already have an Account?",
              textType: "Login",
            ),
          ],
        ),
      ),
    ));
  }
}
