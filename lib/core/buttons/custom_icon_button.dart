// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomIconButoon extends StatelessWidget {
  const CustomIconButoon({
    Key? key,
    required this.lighticon,
    required this.darkticon,
    required this.lightcolor,
    required this.darkcolor,
    required this.onChanged,
    required this.value,
  }) : super(key: key);
  final IconData lighticon;
  final IconData darkticon;
  final Color lightcolor;
  final Color darkcolor;
  final ValueChanged onChanged;
  // final Function(bool isOn) onChanged;
  final bool value;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () => onChanged(value),
        iconSize: 30,
        icon: value
            ? Icon(
                lighticon,
                color: lightcolor,
              )
            : Icon(
                darkticon,
                color: darkcolor,
              ));
  }
}
