import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  TextStyle? style;
  String text;
  int? maxLine;
  TextAlign? textAlign;
  TextWidget({Key? key, required this.text, this.style, this.textAlign, this.maxLine}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine??2,
      textAlign: textAlign,
      style: style,
    );
  }
}
