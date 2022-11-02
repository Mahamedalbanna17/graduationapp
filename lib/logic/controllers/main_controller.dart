import 'package:e_commerce_app/view/screens/Home_screen.dart';
import 'package:e_commerce_app/view/screens/profile_screen.dart';
import 'package:e_commerce_app/view/screens/setting_screen.dart';
import 'package:get/get.dart';

class mainConrtoller extends GetxController {
  RxInt itemIndex = 1.obs;
  final items = [
    ProfileScreen(),
    HomeScreen(),
    SettingsScreen()
  ].obs;
}
