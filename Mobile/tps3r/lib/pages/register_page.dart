import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/radio_button_widget.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

import '../utils/colors/colors_style.dart';
import '../widgets/atom/button_widget.dart';
import '../widgets/atom/edit_text_widget.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: SizeResource.paddingHorizontal),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Center(child: Text('Logo')),
                  TextWidget(
                    text: StringResource.titleRegister,
                    style: FontsStyle.textMedium,
                  ),
                  TextWidget(
                    text: StringResource.textRegister,
                    style: FontsStyle.textSmall,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  EditTextWidget(
                      hint: StringResource.hintEmail,
                      textTitleField: StringResource.titleFieldEmail,
                      validator: (valueIn) {}),
                  const SizedBox(
                    height: 16,
                  ),
                  TextWidget(text: StringResource.titleGender),
                  const RadioButtonWidget(),
                  const SizedBox(
                    height: 16,
                  ),
                  EditTextWidget(
                      hint: StringResource.hintPhone,
                      type: TextInputType.number,
                      textTitleField: StringResource.titleFieldPhone,
                      validator: (valueIn) {}),
                  const SizedBox(
                    height: 16,
                  ),
                  EditTextWidget(
                      hint: StringResource.hintPassword,
                      textTitleField: StringResource.titleFieldPassword,
                      validator: (valueIn) {}),
                  const SizedBox(
                    height: 30,
                  ),
                  TextWidget(
                    text: StringResource.textTerms,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ButtonWidget(
                    textButton: StringResource.titleRegister,
                    color: MyColors.main,
                    function: (){},
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class TextTitleWidget {}
