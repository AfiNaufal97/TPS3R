import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextLinkWidget extends StatelessWidget {
  String textNotLink;
  String textForLink;
  void Function() function;
  TextLinkWidget(
      {Key? key, required this.textNotLink, required this.textForLink, required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(textNotLink),
        GestureDetector(
          onTap:function,
          child: Text(textForLink)),
      ],
    );
  }
}
