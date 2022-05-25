import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/widgets/moleculs/header_widget.dart';

import '../resources/string_resource.dart';
import '../utils/colors/colors_style.dart';
import '../widgets/atom/button_widget.dart';
import '../widgets/atom/edit_text_widget.dart';
import '../widgets/atom/radio_button_widget.dart';
import '../widgets/atom/text_widget.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                HeaderWidget(function: () {}, text: StringResource.titleEditProfilePage),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizeResource.paddingHorizontal,
                      vertical: SizeResource.paddingVertical),
                  child: Column(
                    children: [
                      const Center(
                          child: Icon(
                        Icons.camera_alt,
                        size: 150,
                      )),
                      EditTextWidget(
                        initialValue: StringResource.valueNameEditField,
                        hint: StringResource.hintEmail,
                        textTitleField: StringResource.titleFieldName,
                        validator: (valueIn) {},
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      EditTextWidget(
                          initialValue: 'alex@mail.com',
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
                      Row(
                        children: [
                          Expanded(
                            child: EditTextWidget(
                                hint: StringResource.locationTag,
                                textTitleField: StringResource.locationTag,
                                validator: (valueIn) {}),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.location_on_outlined,
                                size: 30,
                              ))
                        ],
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ButtonWidget(
                        textButton: StringResource.buttonEditPage,
                        color: MyColors.main,
                        function: () {},
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
