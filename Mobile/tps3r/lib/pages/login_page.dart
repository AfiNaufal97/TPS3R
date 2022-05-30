import 'package:flutter/material.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/routes/route_name.dart';
import 'package:tps3r/widgets/atom/edit_text_widget.dart';
import 'package:tps3r/widgets/atom/icon_button_widget.dart';
import 'package:tps3r/widgets/atom/logo_widget.dart';
import 'package:tps3r/widgets/atom/text_link_widget.dart';
import 'package:tps3r/widgets/moleculs/say_hello_widget.dart';

import '../widgets/atom/button_widget.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const LogoWidget(),
                const SayHelloWidget(),
                const SizedBox(
                  height: 30,
                ),
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        EditTextWidget(
                          hint: 'contoh : afi@mail.com',
                          textTitleField: 'Email',
                          validator: (valueIn) {
                            if (valueIn != null && valueIn.isEmpty) {
                              return 'Tidak Boleh Kososng';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        EditTextWidget(
                          hint: '*********',
                          textTitleField: 'Password',
                          cantRead: true,
                          validator: (valueIn) {
                            if (valueIn != null && valueIn.isEmpty) {
                              return 'Tidak Boleh Kososng';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ButtonWidget(
                          textButton: StringResource.titleLogin,
                          color: MyColors.green,
                          function: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.pushNamedAndRemoveUntil(context,
                                  RoutesName.mainPage, (route) => false);
                            }
                          },
                        )
                      ],
                    )),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButtonWidget(
                        icon: Image.asset('assets/assets/image/google.png'),
                        iconSize: 35,
                        function: () {}),
                    const SizedBox(
                      width: 30,
                    ),
                    IconButtonWidget(
                        icon: Image.asset('assets/assets/image/facebook.png'),
                        iconSize: 35,
                        function: () {})
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                TextLinkWidget(
                  textNotLink: StringResource.textNoLink,
                  textForLink: StringResource.textWithLink,
                  function: () {
                    Navigator.pushNamed(context, RoutesName.register);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
