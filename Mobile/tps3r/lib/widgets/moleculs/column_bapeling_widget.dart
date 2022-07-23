import 'package:flutter/material.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/widgets/atom/button_widget.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

// ignore: must_be_immutable
Widget ColumnBapelingWidget ({required String title, required String value, required String nameButton}){
    return Column(
      children: [
        TextWidget(text: title),
        TextWidget(text: value),
        ButtonWidget(
          textButton: nameButton,
          color: MyColors.main,
          function: () {},
        )
      ],
    );
  }
