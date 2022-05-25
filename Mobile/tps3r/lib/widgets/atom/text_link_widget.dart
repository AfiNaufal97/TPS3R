import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TextLinkWidget extends StatelessWidget {
  String textNotLink;
  String textForLink;
  TextLinkWidget(
      {Key? key, required this.textNotLink, required this.textForLink})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(textNotLink),
        Text(textForLink),
      ],
    );
  }
}
