import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/button_text_widget.dart';
import 'package:tps3r/widgets/atom/button_widget.dart';
import 'package:tps3r/widgets/atom/edit_text_widget.dart';
import 'package:tps3r/widgets/atom/icon_button_widget.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Image.asset(
                    'assets/assets/image/Mapsicle Map.png',
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeResource.paddingHorizontal),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 16,
                        ),
                        TextWidget(
                          text: StringResource.locationTag,
                          style: FontsStyle.textMedium,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        EditTextWidget(
                          hint: StringResource.hintLocationTag,
                          textTitleField: StringResource.hintLocationTag,
                          validator: (valueIn) {},
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ButtonWidget(
                          textButton: StringResource.chooseLoction,
                          color: MyColors.main,
                          function: () {},
                        ),
                        const SizedBox(
                          height: 30,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtonWidget(
                      icon: CircleAvatar(
                          backgroundColor: MyColors.white,
                          child: Row(
                            children: const [
                              SizedBox(
                                width: 12,
                              ),
                              Icon(Icons.arrow_back_ios),
                            ],
                          )),
                      iconSize: 40,
                      function: () {}),
                   ButtonTextWidget()
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
