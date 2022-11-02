import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/view/screens/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../logic/controllers/auth_controller.dart';
import '../../../utils/theme.dart';
import '../../widgets/auth/auth_button.dart';
import '../../widgets/auth/auth_text_formFeild.dart';
import '../../widgets/auth/containerunder.dart';
import '../../widgets/auth/my_string.dart';
import '../../widgets/text_utils.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
  
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  void initState() {
    // TODO: implement initState
    
    setData();
    getData();
  }
  
  final formKey = GlobalKey<FormState>();

  final controller = Get.find<AuthController>();
  String ?email='';
  String password='';

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
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Padding(
                padding: EdgeInsets.only(left: 25, right: 25, top: 40),
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
                              text: "LOG",
                              underline: TextDecoration.none),
                          const SizedBox(
                            width: 2.5,
                          ),
                          Textutils(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.w500,
                              text: "IN",
                              underline: TextDecoration.none)
                        ],
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      AuthTextFormField(
                        controller: emailcontroller,
                        obscureText: false,
                        prefixIcon: Image.asset("assets/images/email.png",
                            color: Color.fromRGBO(215, 32, 32, 1)),
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
                            prefixIcon: Image.asset("assets/images/lock.png",
                                color: Color.fromRGBO(215, 32, 32, 1)),
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
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {},
                            child: Textutils(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                                text: "Forget Password ?",
                                underline: TextDecoration.none)),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      GetBuilder<AuthController>(builder: (_) {
                        return AuthButton(
                          text: 'LOGIN',
                          onPressed: () async {
                            if (formKey.currentState!.validate()) {
                              String email = emailcontroller.text.trim();
                              String password = passcontroller.text;
                              controller.LoginUsingFireBase(
                                password: password,
                                email: email,
                              );
                              
                            }
                            
                            // final SharedPreferences pref =await SharedPreferences.getInstance();
                            // pref.setString('email', emailcontroller.text);
                            // Get.toNamed(Routes.mainScreen);
                          },
                        );
                      }),
                      SizedBox(
                        height: 20,
                      ),
                      Textutils(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                          text: "OR",
                          underline: TextDecoration.none),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                              onTap: () {},
                              child:
                                  Image.asset("assets/images/Rectangle 8.png")),
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
            Center(
              child: ContainerUnder(
                onPressed: () {
                  Get.offNamed(Routes.SignUpScreen);
                },
                text: "Don't Have an Account? ",
                textType: "Sign up",
              ),
            ),
          ],
        ),
      ),
    ));
  }

   setData()async{if(email==emailcontroller.text&&password==passcontroller.text){
     SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString('email',emailcontroller.text );
    pref.setString('password',passcontroller.text );
   // Get.toNamed(Routes.mainScreen);
   }  

   
   
    

  }

   getData()async{
    SharedPreferences pref = await SharedPreferences.getInstance();
   
    setState(() {
    email=   pref.getString('email' ).toString();
      password= pref.getString('password' ).toString();
    });

  }
}
