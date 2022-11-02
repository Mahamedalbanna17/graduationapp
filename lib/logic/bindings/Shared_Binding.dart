import 'package:e_commerce_app/logic/controllers/shared_controller.dart';
import 'package:get/get.dart';

class SharedBinding extends Bindings{
  @override
  void dependencies() {
Get.put(SharedController());
  }
  
}