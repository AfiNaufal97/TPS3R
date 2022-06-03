import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconButtonWidget extends StatelessWidget {
  Widget icon;
  double iconSize;
  void Function() function;
  IconButtonWidget(
      {Key? key,
      required this.icon,
      required this.iconSize,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: function,
      icon: icon,
      iconSize: iconSize,
    );
  }
}
