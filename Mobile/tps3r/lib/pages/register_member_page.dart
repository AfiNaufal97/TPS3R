import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/widgets/atom/button_widget.dart';
import 'package:tps3r/widgets/atom/edit_text_widget.dart';
import 'package:tps3r/widgets/moleculs/header_widget.dart';

class RegisterMember extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(
                  text: StringResource.textResgisterMember, function: () {}),
              Padding(
                padding: const EdgeInsets.all(SizeResource.paddingHorizontal),
                child: Column(
                  children: [
                    EditTextWidget(
                        hint: StringResource.textInputName,
                        validator: (input) {},
                        textTitleField: StringResource.textInputName),
                    const SizedBox(
                      height: SizeResource.marginM,
                    ),
                    EditTextWidget(
                        hint: StringResource.hintPhone,
                        validator: (input) {},
                        textTitleField: StringResource.titleFieldPhone),
                    const SizedBox(
                      height: SizeResource.marginM,
                    ),
                    EditTextWidget(
                        hint: StringResource.textHintAddress,
                        validator: (input) {},
                        textTitleField: StringResource.textTitleAddress),
                    const SizedBox(
                      height: SizeResource.marginM,
                    ),
                    EditTextWidget(
                        hint: StringResource.textHintAddress,
                        validator: (input) {},
                        textTitleField: StringResource.textTitleAddress),
                    const SizedBox(
                      height: SizeResource.marginM,
                    ),
                    EditTextWidget(
                        hint: StringResource.textHintAddress,
                        validator: (input) {},
                        textTitleField: StringResource.textTitleAddress),
                    const SizedBox(
                      height: SizeResource.marginM,
                    ),
                    EditTextWidget(
                        hint: StringResource.textTitleChoseePackage,
                        validator: (input) {},
                        textTitleField: StringResource.textHinChoosetPackage),
                    const SizedBox(
                      height: SizeResource.marginM,
                    ),
                    EditTextWidget(
                        hint: StringResource.textTitleCountFamilly,
                        validator: (input) {},
                        textTitleField: StringResource.textHintCountFamilly),
                    const SizedBox(
                      height: SizeResource.marginM,
                    ),
                    ButtonWidget(
                        color: MyColors.green,
                        textButton: StringResource.textSaveResgister,
                        function: () {})
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
