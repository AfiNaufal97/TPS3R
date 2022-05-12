import 'package:flutter/material.dart';
import 'package:tps3r/widgets/widget_medium/link_register/link_resgiter_widget.dart';
import 'package:tps3r/widgets/widget_mini/button/button_icon_widget.dart';
import 'package:tps3r/widgets/widget_mini/image/image_widget.dart';

import '../../widgets/widget_large/form/form_widget.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);
  TextEditingController email = TextEditingController(text: '');
  TextEditingController password = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 51.0),
        child: Column(
          children: [
            ImageWidget(
                internet: false, pathImage: 'assets/assets/image/logo.png'),
            FormWidget(
                hintEmail: 'Masukan Email',
                hintPassword: 'Masukan Password',
                password: password,
                email: email,
                textButton: 'Login'),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonIconWidget(
                    internet: false,
                    pathImage: 'assets/assets/image/facebook.png'),
                const SizedBox(
                  width: 50,
                ),
                ButtonIconWidget(
                    internet: false,
                    pathImage: 'assets/assets/image/google.png'),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            LinkRegisterWidget(
                text: 'Belum Punya Akun?', textLink: '  Daftar disini')
          ],
        ),
      ),
    );
  }
}
