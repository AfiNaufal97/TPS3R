import 'package:flutter/material.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

// ignore: must_be_immutable
class IconTextWidget extends StatelessWidget{
  Widget widget;
  String text;
  IconTextWidget({Key? key, required this.widget, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget,
        TextWidget(text: text, style: FontsStyle.textButtonOnboarding,)
      ],
    );
  }
}