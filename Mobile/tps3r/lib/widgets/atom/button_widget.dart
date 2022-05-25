import 'package:flutter/material.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  String textButton;
  Color? color;
  TextStyle? style;
  void Function() function;
  ButtonWidget({Key? key, required this.textButton, this.color, this.style, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size>(
            Size(MediaQuery.of(context).size.width, 50),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(color!)),
      onPressed:function,
      child: TextWidget(text: textButton, style: style?? FontsStyle.textMedium,),
    );
  }
}
