// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:login_screen/core/components/textfield/customtextfield.dart';

class CustomInputTextField extends StatelessWidget {
  const CustomInputTextField(
      {Key? key, required this.text, this.obscureText = false})
      : super(key: key);
  final String text;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    return CustomTextField(
      textcolor: tema.colorScheme.surface,
      hintcolor: tema.colorScheme.onSurface,
      text: text,
      obscureText: obscureText,
    );
  }
}
