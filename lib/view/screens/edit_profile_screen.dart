// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:e_commerce_app/utils/theme.dart';
import 'package:e_commerce_app/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../logic/controllers/auth_controller.dart';
import '../../routes/routes.dart';
import '../../utils/my_string.dart';
import '../widgets/auth/auth_button.dart';
import '../widgets/auth/auth_text_formFeild.dart';
import '../widgets/auth/containerunder.dart';

class EditProfileScreen extends StatefulWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final formKey = GlobalKey<FormState>();

  final controller = Get.find<AuthController>();

  final TextEditingController namecontroller = TextEditingController();

  final TextEditingController emailcontroller = TextEditingController();

  final TextEditingController phonecontroller = TextEditingController();
@override
  void initState() {
    // TODO: implement initState
    
    
  }
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.account_circle,
              color: Colors.black,
            )),
        title: Textutils(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
            text: 'Edit Profile',
            underline: TextDecoration.none),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 1.3,
              child: Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 40),
                child: Form(
                  key: formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 50,
                      ),
                      AuthTextFormField(
                        controller: namecontroller,
                        obscureText: false,
                        prefixIcon: Image.asset(
                          "assets/images/user.png",
                          color: Color.fromRGBO(215, 32, 32, 1),
                        ),
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
                        height: 50,
                      ),
                      AuthTextFormField(
                        controller: emailcontroller,
                        obscureText: false,
                        prefixIcon: Image.asset(
                          "assets/images/email.png",
                          color: Color.fromRGBO(215, 32, 32, 1),
                        ),
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
                        height: 50,
                      ),
                      GetBuilder<AuthController>(
                        builder: (_) {
                          return AuthTextFormField(
                            controller: phonecontroller,
                            obscureText: false,
                            prefixIcon: Icon(
                              Icons.phone_android,
                              color: Colors.red,
                            ),
                            suffixIcon: Text(''),
                            validator: (value) {
                              if (!RegExp(validationNumber).hasMatch(value)) {
                                return "Invalid Phone ";
                              } else {
                                return null;
                              }
                            },
                            hintText: "Phone",
                          );
                        },
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      GetBuilder<AuthController>(builder: (_) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: ElevatedButton(
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                String name = "";
                                String email = emailcontroller.text.trim();
                                String Phone = phonecontroller.text;
                                controller.SingUpUsingFireBase(
                                  name: name,
                                  password: Phone,
                                  email: email,
                                );
                                Get.toNamed(Routes.ProfileScreen);
                              }
                            },
                            child: Textutils(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                text: 'Save',
                                underline: TextDecoration.none),
                            style: ElevatedButton.styleFrom(
                                minimumSize: Size(265, 70),
                                backgroundColor: mainColor),
                          ),
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
   


  }

