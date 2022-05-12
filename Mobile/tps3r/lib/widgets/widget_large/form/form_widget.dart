import 'package:flutter/material.dart';

import '../../widget_mini/button/button_general_widget.dart';
import '../../widget_mini/text_field/text_field_widget.dart';

// ignore: must_be_immutable
class FormWidget extends StatelessWidget {
  String hintEmail;
  String hintPassword;
  String textButton;
  TextEditingController email;
  TextEditingController password;
  FormWidget(
      {Key? key,
      required this.hintEmail,
      required this.hintPassword,
      required this.password,
      required this.email,
      required this.textButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextFieldWidget(hint: hintEmail, controller: email),
        const SizedBox(
          height: 16,
        ),
        TextFieldWidget(hint: hintPassword, controller: password),
        const SizedBox(
          height: 20,
        ),
        ButtonGeneralWidget(text: textButton)
      ],
    );
  }
}
