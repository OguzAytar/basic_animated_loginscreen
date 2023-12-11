// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextButtons extends StatelessWidget {
  const CustomTextButtons({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(backgroundColor)),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
          ),
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ));
  }
}
