// ignore_for_file: deprecated_member_use

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Changetheme extends ChangeNotifier {
  ThemeMode themeMode;

  Changetheme(bool initialIsDarkMode)
      : themeMode = initialIsDarkMode ? ThemeMode.dark : ThemeMode.light;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) async {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isDarkMode', isOn);
    log(isDarkMode ? 'dark tema kaydedildi' : 'light tema kaydedildi');
    notifyListeners();
  }
}
