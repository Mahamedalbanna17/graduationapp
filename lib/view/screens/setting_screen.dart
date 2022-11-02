// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/main.dart';
import 'package:e_commerce_app/routes/routes.dart';
import 'package:e_commerce_app/utils/theme.dart';
import 'package:e_commerce_app/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
              title: Text(
                'Help And Privacy',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(onTap: (){},
            child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  )),
              title: Text(
                'Technical Support',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.language,
                    color: Colors.white,
                  )),
              title: Text(
                'Languages',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: (){},
            child: ListTile(
              leading: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
              title: Text(
                'Emergency Support',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Center(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: mainColor, minimumSize: Size(265, 70)),
                onPressed: () {
                  
                },
                child: Textutils(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    text: 'Sign Out',
                    underline: TextDecoration.none),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
