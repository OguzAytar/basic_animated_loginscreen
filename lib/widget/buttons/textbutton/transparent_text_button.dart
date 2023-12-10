// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:login_screen/core/buttons/custom_text_buttons.dart';

class TransparentTextButton extends StatefulWidget {
  const TransparentTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  @override
  State<TransparentTextButton> createState() => _TransparentTextButtonState();
}

class _TransparentTextButtonState extends State<TransparentTextButton> {
  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    return CustomTextButtons(
        backgroundColor: Colors.transparent,
        textColor: tema.colorScheme.surface,
        onPressed: widget.onPressed,
        text: widget.text);
  }
}
