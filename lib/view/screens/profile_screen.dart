// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/utils/theme.dart';
import 'package:e_commerce_app/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/auth/auth_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

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
            text: 'Profile',
            underline: TextDecoration.none),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.black,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          // ignore: prefer_const_literals_to_create_immutables
          children: [
            SizedBox(
              height: 50,
            ),
            const Text('Full Name',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(195, 72, 72, 1),
                )),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 9),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 9),
                child: Text(
                  'Mohamed albanna',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  Icons.email,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('E-mail',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(195, 72, 72, 1),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 9),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 9),
                child: Text(
                  'bana@gamil.com',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(height: 50),
            Row(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Icon(
                  Icons.phone_android,
                  color: Colors.red,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Phone',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(195, 72, 72, 1),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(right: 9),
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 9),
                child: Text(
                  '0112334567',
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.EditProfileScreen);
                  },
                  child: Textutils(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      text: 'Edit Profile',
                      underline: TextDecoration.none),
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(265, 74), backgroundColor: mainColor),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
