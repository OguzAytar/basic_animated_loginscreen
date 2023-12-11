// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';
import 'package:login_screen/core/components/buttons/custom_buttons.dart';
import 'package:login_screen/theme/theme.dart';
import 'package:login_screen/widget/buttons/elevatedbutton/black_buttons.dart';
import 'package:login_screen/widget/buttons/elevatedbutton/blue_buttons.dart';
import 'package:login_screen/widget/buttons/textbutton/transparent_text_button.dart';
import 'package:login_screen/widget/textfield/custom_text_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final tema = Theme.of(context);
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            const Color(0xff0093c71),
            Colors.blue.shade800,
            Colors.blue.shade600
          ], begin: Alignment.topCenter),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Spacer(
            flex: 1,
          ),
          const Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Kayıt Ol',
                style: TextStyle(color: Temalar.white, fontSize: 60),
              ),
            ),
          ),
          Expanded(
            flex: 9,
            child: Container(
              decoration: BoxDecoration(
                  color: tema.colorScheme.background,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(65),
                      topRight: Radius.circular(65))),
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(25),
                        child: Container(
                            decoration: BoxDecoration(
                                color: tema.colorScheme.background,
                                boxShadow: const [
                                  BoxShadow(
                                      color: Temalar.primaryColor,
                                      offset: Offset(0, 20),
                                      blurRadius: 25)
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: const Column(
                              children: [
                                CustomInputTextField(
                                    text: 'Kullanıcı adı oluştur'),
                                Divider(),
                                CustomInputTextField(text: 'E-Posta'),
                                Divider(),
                                CustomInputTextField(
                                  text: 'Şifre',
                                  obscureText: true,
                                ),
                              ],
                            )),
                      ),
                      CustomButtons(
                        text: 'Kayıt Ol',
                        onPressed: () {},
                        backgroundColor: Temalar.primaryColor,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          CustomBlueButton(
                            text: 'Facebook',
                            onPressed: () {},
                          ),
                          const Spacer(),
                          CustomBlackButton(
                            text: 'GitHub',
                            onPressed: () {},
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text('Zaten bi hesabın var mı?'),
                      TransparentTextButton(
                        text: 'Giriş Yap',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        textColor: Colors.blue,
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
