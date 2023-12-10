import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:login_screen/core/buttons/custom_icon_button.dart';
import 'package:login_screen/core/provider/theme_provider/theme_provider.dart';
import 'package:login_screen/theme/theme.dart';
import 'package:provider/provider.dart';

class Switchbutton extends StatefulWidget {
  const Switchbutton({super.key});

  @override
  State<Switchbutton> createState() => _SwitchbuttonState();
}

class _SwitchbuttonState extends State<Switchbutton> {
  @override
  Widget build(BuildContext context) {
    final temaprovider = Provider.of<Changetheme>(context);
    return CustomIconButoon(
      lighticon: Icons.dark_mode_outlined,
      darkticon: Icons.light_mode_outlined,
      onChanged: (value) {
        log(value.toString());
        temaprovider.toggleTheme(!temaprovider.isDarkMode);
      },
      value: temaprovider.isDarkMode,
      lightcolor: Temalar.white,
      darkcolor: Temalar.white,
    );
  }
}
