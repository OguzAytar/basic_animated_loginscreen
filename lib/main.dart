// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:login_screen/core/provider/theme_provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:login_screen/theme/theme.dart';
import 'package:login_screen/view/login/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  bool initialIsDarkMode =
      prefs.getBool('isDarkMode') ?? ThemeMode.system == ThemeMode.dark;

  runApp(MyApp(
    initialIsDarkMode: initialIsDarkMode,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
    required this.initialIsDarkMode,
  }) : super(key: key);
  final bool initialIsDarkMode;
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Changetheme(initialIsDarkMode),
      builder: (context, child) {
        return Consumer<Changetheme>(
          builder: (context, temadegis, child) {
            return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: Temalar.lighttheme,
                darkTheme: Temalar.darktheme,
                themeMode: temadegis.themeMode,
                home: const LoginScreen());
          },
        );
      },
    );
  }
}
