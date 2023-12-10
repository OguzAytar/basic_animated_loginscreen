// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:login_screen/core/buttons/custom_buttons.dart';
import 'package:login_screen/theme/theme.dart';
import 'package:login_screen/widget/buttons/elevatedbutton/black_buttons.dart';
import 'package:login_screen/widget/buttons/elevatedbutton/blue_buttons.dart';
import 'package:login_screen/widget/buttons/iconbutton/switchbuttons.dart';
import 'package:login_screen/widget/buttons/textbutton/transparent_text_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          const Color(0xff0093c71),
          Colors.blue.shade800,
          Colors.blue.shade600
        ], begin: Alignment.topCenter)),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Spacer(
            flex: 3,
          ),
          Expanded(
            flex: 25,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 20,
                        child: FadeInUp(
                          duration: const Duration(milliseconds: 800),
                          child: const Switchbutton(),
                        ),
                      ),
                      Expanded(
                        flex: 50,
                        child: FadeInUp(
                          duration: const Duration(seconds: 1),
                          child: const Text(
                            'Giriş',
                            style:
                                TextStyle(color: Temalar.white, fontSize: 60),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 30,
                        child: FadeInUp(
                          duration: const Duration(milliseconds: 1500),
                          child: const Text(
                            'Hoşgeldiniz',
                            style:
                                TextStyle(color: Temalar.white, fontSize: 30),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 50,
            child: FadeInUp(
              duration: const Duration(milliseconds: 1800),
              child: Container(
                decoration: BoxDecoration(
                    color: tema.colorScheme.background,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(65),
                        topRight: Radius.circular(65))),
                child: Padding(
                  padding: const EdgeInsets.all(55),
                  child: Column(children: [
                    Container(
                      decoration: BoxDecoration(
                          color: tema.colorScheme.background,
                          boxShadow: const [
                            BoxShadow(
                                color: Temalar.primaryColor,
                                offset: Offset(0, 20),
                                blurRadius: 25)
                          ],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10))),
                      child: Column(children: [
                        Container(
                            margin: const EdgeInsets.all(15),
                            child: TextField(
                              style: TextStyle(color: tema.colorScheme.surface),
                              decoration: InputDecoration(
                                  hintText: 'Email veya Telefon Numarası',
                                  hintStyle: TextStyle(
                                      color: tema.colorScheme.onSurface),
                                  border: InputBorder.none),
                            )),
                        const Divider(),
                        Container(
                            margin: const EdgeInsets.all(10),
                            child: TextField(
                              style: TextStyle(color: tema.colorScheme.surface),
                              decoration: InputDecoration(
                                  hintText: 'Şifre',
                                  hintStyle: TextStyle(
                                      color: tema.colorScheme.onSurface),
                                  border: InputBorder.none),
                              obscureText: true,
                            )),
                      ]),
                    ),
                    Expanded(
                      flex: 2,
                      child: FadeInLeft(
                        duration: const Duration(milliseconds: 1500),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TransparentTextButton(
                              text: 'Kayıtlı değil Misin? \n Hemen Kaydol',
                              onPressed: () {},
                            ),
                            TransparentTextButton(
                              text: 'Şifreni mi unuttun',
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Expanded(
                      child: FadeInDown(
                        duration: const Duration(milliseconds: 1500),
                        child: CustomButtons(
                          backgroundColor: Temalar.primaryColor,
                          text: 'Giriş Yap',
                          onPressed: () {},
                        ),
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      child: FadeInLeft(
                        child: Text(
                          'Sosyal Medya ile devam et',
                          style: TextStyle(color: tema.colorScheme.surface),
                        ),
                      ),
                    ),
                    Expanded(
                      child: FadeInLeft(
                        duration: const Duration(milliseconds: 1500),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomBlueButton(
                              text: 'Facebook',
                              onPressed: () {},
                            ),
                            CustomBlackButton(
                              text: 'Github',
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
