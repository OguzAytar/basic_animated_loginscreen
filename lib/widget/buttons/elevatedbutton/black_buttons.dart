// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:login_screen/core/buttons/custom_buttons.dart';

class CustomBlackButton extends StatelessWidget {
  const CustomBlackButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return CustomButtons(
      text: text,
      onPressed: onPressed,
      backgroundColor: Colors.black,
      foregroundColor: Colors.white,
    );
  }
}
