import 'package:flutter/material.dart';
import 'package:tps3r/utils/colors/colors.dart';
import 'package:tps3r/utils/fonts/fonts.dart';
import 'package:tps3r/widgets/widget_mini/text/text_widget.dart';

// ignore: must_be_immutable
class ButtonGeneralWidget extends StatelessWidget {
  String text;
  Color? colors;
  ButtonGeneralWidget({Key? key, this.colors, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          fixedSize:MaterialStateProperty.all<Size>(Size(MediaQuery.of(context).size.width, 48.0)) ,
          textStyle: MaterialStateProperty.all<TextStyle>(
              mainFont.copyWith(color: Colors.white)),
          backgroundColor:
              MaterialStateProperty.all<Color>(colors ?? mainColor)),
      onPressed: () {},
      child: TextWidget(text: text, sizeFont: 20, fontWeight: FontWeight.bold,textColor: Colors.white),
    );
  }
}
