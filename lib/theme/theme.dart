// import 'package:flutter/material.dart';

// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class Temalar {
  static const primaryColor = Color(0xff0093c71);
  static const white = Colors.white;

  static const backgroundColor = Color(0xff0093c71);
  static const blackBackground = Color.fromARGB(249, 41, 41, 41);

  //*                       aydınlık tema ayarlar
  static final lighttheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(
          backgroundColor: backgroundColor,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 24),
          foregroundColor: Colors.white,
          centerTitle: true),
      switchTheme: const SwitchThemeData(
        thumbColor: MaterialStatePropertyAll(Colors.white),
      ),
      textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
          iconColor: MaterialStatePropertyAll(Colors.white),
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          backgroundColor: MaterialStatePropertyAll(backgroundColor),
        ),
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              iconColor: MaterialStatePropertyAll(Colors.white),
              foregroundColor: MaterialStatePropertyAll(Colors.white),
              iconSize: MaterialStatePropertyAll(36),
              textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 24)))),
      inputDecorationTheme:
          const InputDecorationTheme(border: OutlineInputBorder()),
      // dropdownMenuTheme: DropdownMenuThemeData(
      //     textStyle: const TextStyle(color: Colors.white),
      //     menuStyle: MenuStyle(
      //         backgroundColor: MaterialStatePropertyAll(backgroundColor)),
      //     inputDecorationTheme: InputDecorationTheme(
      //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      //     )),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: backgroundColor, foregroundColor: Colors.white),
      colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: Colors.black,
          onPrimary: Color(0xff0093c71),
          secondary: Color(0xff0093c71),
          onSecondary: Color(0xff0093c71),
          error: Colors.red,
          onError: Colors.red,
          background: Colors.white,
          onBackground: Colors.black,
          surface: Colors.black,
          onSurface: Color.fromARGB(172, 56, 54, 54)));

  //*                       karanlık tema ayarları

  static final darktheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: primaryColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: backgroundColor,
      ),
      switchTheme: const SwitchThemeData(
          thumbColor: MaterialStatePropertyAll(Colors.white),
          trackColor: MaterialStatePropertyAll(Color(0xff0093c71))),
      textButtonTheme: const TextButtonThemeData(
        style: ButtonStyle(
          iconColor: MaterialStatePropertyAll(Colors.white),
          foregroundColor: MaterialStatePropertyAll(Colors.white),
          backgroundColor: MaterialStatePropertyAll(backgroundColor),
        ),
      ),
      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(backgroundColor),
              iconColor: MaterialStatePropertyAll(Colors.white),
              foregroundColor: MaterialStatePropertyAll(Colors.white),
              iconSize: MaterialStatePropertyAll(36),
              textStyle: MaterialStatePropertyAll(TextStyle(fontSize: 24)))),
      inputDecorationTheme:
          const InputDecorationTheme(border: OutlineInputBorder()),
      // dropdownMenuTheme: DropdownMenuThemeData(
      //     textStyle: const TextStyle(color: Colors.white),
      //     menuStyle: const MenuStyle(
      //         backgroundColor: MaterialStatePropertyAll(backgroundColor)),
      //     inputDecorationTheme: InputDecorationTheme(
      //       border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
      //     )),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: backgroundColor, foregroundColor: Colors.white),
      colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Colors.white,
          onPrimary: Color.fromARGB(255, 13, 96, 185),
          secondary: Colors.white,
          onSecondary: Color(0xff0093c71),
          error: Colors.red,
          onError: Colors.red,
          background: blackBackground,
          onBackground: Colors.grey,
          surface: Color.fromARGB(255, 212, 212, 212),
          onSurface: Color.fromARGB(255, 129, 129, 129)));
}

  
////////////////////////////////////////////////////////////////////////////////





