// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({
    Key? key,
    required this.text,
    required this.onPressed,
    this.foregroundColor,
    this.backgroundColor,
  }) : super(key: key);
  final String text;
  final VoidCallback onPressed;
  final Color? foregroundColor;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
          elevation: const MaterialStatePropertyAll(3),
          shadowColor:
              MaterialStatePropertyAll(Theme.of(context).colorScheme.onPrimary),
          overlayColor:
              MaterialStatePropertyAll(Theme.of(context).colorScheme.onSurface),
          minimumSize: MaterialStatePropertyAll(
              Size(MediaQuery.of(context).size.width * 0.15, 50)),
          backgroundColor: MaterialStatePropertyAll(backgroundColor)),
      child: Text(
        text,
        style: TextStyle(color: foregroundColor),
      ),
    );
  }
}
