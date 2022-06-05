import 'package:flutter/material.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

// ignore: must_be_immutable
class IconTextWidget extends StatelessWidget{
  Widget widget;
  String text;
  TextStyle? style;
  IconTextWidget({Key? key, required this.widget, required this.text, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        widget,
        const SizedBox(width: 10,),
        Expanded(
          child: TextWidget(text: text, style: style ?? FontsStyle.textButtonOnboarding.copyWith(
            fontSize: 12
          ),),
        )
      ],
    );
  }
}