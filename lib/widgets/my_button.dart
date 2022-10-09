// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
final  String buttonText;
final  VoidCallback onPressed;
const  MyButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: Colors.grey,
      onPressed: onPressed,
      child: Text(buttonText),
    );
  }
}
