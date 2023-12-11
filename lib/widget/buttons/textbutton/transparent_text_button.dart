// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:login_screen/core/components/buttons/custom_text_buttons.dart';

class TransparentTextButton extends StatefulWidget {
  const TransparentTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.textColor,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;
  final Color? textColor;

  @override
  State<TransparentTextButton> createState() => _TransparentTextButtonState();
}

class _TransparentTextButtonState extends State<TransparentTextButton> {
  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    final textColor = widget.textColor ?? tema.colorScheme.surface;
    return CustomTextButtons(
        backgroundColor: Colors.transparent,
        textColor: textColor,
        onPressed: widget.onPressed,
        text: widget.text);
  }
}
