// ignore_for_file: prefer_const_constructors

import 'package:e_commerce_app/utils/theme.dart';
import 'package:e_commerce_app/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';

class ContainerUnder extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final String textType;
  const ContainerUnder(
      {required this.onPressed,
      required this.text,
      required this.textType,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: double.infinity,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Textutils(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              text: text,
              underline: TextDecoration.none),
          TextButton(
              onPressed: onPressed,
              child: Textutils(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  text: textType,
                  underline: TextDecoration.underline))
        ],
      ),
    );
  }
}
