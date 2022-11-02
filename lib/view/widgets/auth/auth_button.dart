import 'package:e_commerce_app/utils/theme.dart';
import 'package:e_commerce_app/view/widgets/text_utils.dart';
import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({required this.text, required this.onPressed, Key? key})
      : super(key: key);
  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
          primary: mainColor, minimumSize: Size(360, 50)),
      child: Textutils(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          text: text,
          underline: TextDecoration.none),
    );
  }
}
