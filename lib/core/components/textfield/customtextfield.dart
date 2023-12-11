// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {Key? key,
      required this.textcolor,
      required this.hintcolor,
      required this.text,
      required this.obscureText})
      : super(key: key);
  final Color textcolor;
  final Color hintcolor;
  final String text;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      child: TextField(
        style: TextStyle(color: textcolor),
        decoration: InputDecoration(
            hintText: text,
            hintStyle: TextStyle(color: hintcolor),
            border: InputBorder.none),
        obscureText: obscureText,
      ),
    );
  }
}
