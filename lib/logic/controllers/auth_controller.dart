// ignore_for_file: non_constant_identifier_names

import 'package:e_commerce_app/routes/routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  bool isVisibility = false;
  bool isCheckBox = false;
  var displayName = '';
  FirebaseAuth auth = FirebaseAuth.instance;

  void visibility() {
    isVisibility = !isVisibility;
    update();
  }

  void checkBox() {
    isCheckBox = !isCheckBox;
    update();
  }

  void SingUpUsingFireBase(
      {required String name,
      required String password,
      String? phone,
      required String email}) async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: email, password: password)
          .then((value) {
        displayName = name;
        
      });
      update();
      Get.offAllNamed(Routes.mainScreen);
    } on FirebaseAuthException catch (error) {
      String title = error.code.replaceAll(RegExp('-'), ' ').capitalize!;
      String message = '';
      if (error.code == 'weak-password') {
        message = 'The password provided is too weak.';
      } else if (error.code == 'email-already-in-use') {
        message = 'The account already exists for that email.';
      } else {
        message = error.message.toString();
      }
      Get.snackbar(title, message,
          snackPosition: SnackPosition.BOTTOM,
          padding: EdgeInsets.all(20),
          backgroundColor: Colors.grey,
          duration: Duration(seconds: 3),
          colorText: Colors.white);
    } catch (error) {
      Get.snackbar('Error', error.toString(),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.blue,
          colorText: Colors.white);
    }
  }

  void LoginUsingFireBase(
      {required String email, required String password}) async {
    try {
      await auth
          .signInWithEmailAndPassword(email: email, password: password);
      update();
      Get.offNamed(Routes.mainScreen);
    } on FirebaseAuthException catch (error) {
      String title = error.code.replaceAll(RegExp('-'), ' ').capitalize!;
      String message = '';
      if (error.code == 'user-not-found') {
        message =
            "Account doesn't exist to this $email ..Create an account by sign up";
      } else if (error.code == 'wrong-password') {
        message = "Invalid Password ...Try again ,please";
      } else {
        message = error.message.toString();
      }
      Get.snackbar(title, message,
          snackPosition: SnackPosition.BOTTOM,
          padding: EdgeInsets.all(20),
          backgroundColor: Colors.grey,
          duration: Duration(seconds: 3),
          colorText: Colors.white);

      print(error);
    }

    void GoogleUsingFireBase() {}
    void FaceBookUsingFireBase() {}
    void singOutUsingFireBase() {}
  }
}
