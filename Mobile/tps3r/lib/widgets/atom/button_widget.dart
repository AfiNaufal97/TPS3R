import 'package:flutter/material.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

// ignore: must_be_immutable
class ButtonWidget extends StatelessWidget {
  String textButton;
  Color? color;
  double? height;
  double? width;
  double? radius;
  TextStyle? style;
  void Function() function;
  ButtonWidget(
      {Key? key,
      required this.textButton,
      this.color,
      this.height,
      this.width,
      this.radius,
      this.style,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          fixedSize: MaterialStateProperty.all<Size>(
            Size(width ?? MediaQuery.of(context).size.width, height ?? 50),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(radius ?? 10),
            ),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(color!)),
      onPressed: function,
      child: TextWidget(
        text: textButton,
        style: style ?? FontsStyle.textMedium,
      ),
    );
  }
}
