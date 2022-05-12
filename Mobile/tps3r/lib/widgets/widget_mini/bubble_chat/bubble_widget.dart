import 'package:flutter/material.dart';
import 'package:tps3r/utils/colors/colors.dart';
import 'package:tps3r/widgets/widget_mini/text/text_widget.dart';

// ignore: must_be_immutable
class BubbleWidget extends StatelessWidget {
  bool user;
  String text;

  BubbleWidget({Key? key, required this.user, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 50,
      decoration: BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(20),
              topRight: const Radius.circular(20),
              bottomLeft:
                  user ? const Radius.circular(0) : const Radius.circular(20),
              bottomRight:
                  user ? const Radius.circular(20) : const Radius.circular(0))),
      child: Center(
          child: TextWidget(
        text: text,
        textColor: Colors.white,
        fontWeight: FontWeight.w600,
      )),
    );
  }
}
