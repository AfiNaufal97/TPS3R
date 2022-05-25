import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  TextStyle? style;
  String text;
  TextAlign? textAlign;
  TextWidget({Key? key, required this.text, this.style, this.textAlign}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: style,
    );
  }
}
