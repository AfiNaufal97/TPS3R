import 'package:flutter/material.dart';
import 'package:tps3r/utils/fonts/fonts.dart';

// ignore: must_be_immutable
class TextWidget extends StatelessWidget {
  String text;
  double? sizeFont;
  FontWeight? fontWeight;
  int? maxLines;
  Color? textColor;
  TextWidget({Key? key, required this.text, this.sizeFont, this.fontWeight, this.textColor, this.maxLines}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text, maxLines: maxLines,
      textAlign: TextAlign.justify,
      style: mainFont.copyWith(fontSize: sizeFont ?? 12, fontWeight:fontWeight??FontWeight.w500 , color: textColor??Colors.black),
    );
  }
}
