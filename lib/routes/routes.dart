import 'package:e_commerce_app/logic/bindings/Shared_Binding.dart';
import 'package:e_commerce_app/logic/bindings/auth_binding.dart';
import 'package:e_commerce_app/logic/bindings/mainScreen_binding.dart';
import 'package:e_commerce_app/view/screens/Home_screen.dart';
import 'package:e_commerce_app/view/screens/OTP_form.dart';
import 'package:e_commerce_app/view/screens/auth/login_screen.dart';
import 'package:e_commerce_app/view/screens/auth/signup_screen.dart';
import 'package:e_commerce_app/view/screens/main_screen.dart';
import 'package:e_commerce_app/view/screens/profile_screen.dart';
import 'package:e_commerce_app/view/screens/setting_screen.dart';
import 'package:e_commerce_app/view/screens/splash_screen.dart';
import 'package:e_commerce_app/view/screens/welcome_screen.dart';
import 'package:get/get.dart';

import '../view/screens/auth/onBoarding_screen.dart';
import '../view/screens/edit_profile_screen.dart';
import '../view/screens/profile_screen.dart';
import '../view/screens/profile_screen.dart';

class AppRoutes {
  static const welcome = Routes.splashScreen;

  static final routes = [
    GetPage(
      name: Routes.WelcomeScreen,
      page: () => WelcomeScreen(),
    ),
    GetPage(
      name: Routes.LoginScreen,
      page: () => LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.SignUpScreen,
      page: () => SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.mainScreen,
      page: () => mainScreen(),
      binding: MainBinding(),
    ),  GetPage(
      name: Routes.HomeScreen,
      page: () => HomeScreen(),
      binding: MainBinding(),
    ), GetPage(
      name: Routes.SettingsScreen,
      page: () => SettingsScreen(),
      binding: MainBinding(),
    ),
     
    
     GetPage(
      name: Routes.ProfileScreen,
      page: () => ProfileScreen(),
      binding: AuthBinding()
    
    ), GetPage(
      name: Routes.EditProfileScreen,
      page: () => EditProfileScreen(),
      binding: AuthBinding()
    
    ), GetPage(
      name: Routes.splashScreen,
      page: () => SplashScreen(),
      bindings:[ AuthBinding(),
      SharedBinding(),
      ]
    ),
    GetPage(
        name: Routes.OnBoardingScreen,
        page: () => OnBoardingScreen(),
        bindings: [
          AuthBinding(), 

          ]),GetPage(name: Routes.OtpForm, page:()=> OtpForm())
  ];
}

class Routes {
  static const WelcomeScreen = '/welcomeScreen';
  static const LoginScreen = '/loginScreen';
  static const SignUpScreen = '/signUpScreen';
  static const mainScreen = '/mainScreen';
  static const OnBoardingScreen = '/OnBoardingScreen';
  static const ProfileScreen = '/ProfileScreen';
  static const EditProfileScreen = '/EditProfileScreen';
  static const HomeScreen = '/HomeScreen'; 
  static const SettingsScreen = '/SettingsScreen'; 
  static const splashScreen = '/splashScreen'; 
  static const OtpForm = '/OtpForm'; 
}
