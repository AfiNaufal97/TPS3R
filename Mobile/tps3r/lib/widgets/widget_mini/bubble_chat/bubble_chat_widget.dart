import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BubbleWidget extends StatelessWidget {
  bool me;
  Color color;
  Widget childWidget;
  BubbleWidget(
      {Key? key,
      required this.me,
      required this.color,
      required this.childWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
      borderRadius: BorderRadius.only(
          topLeft: const Radius.circular(20),
          topRight: const Radius.circular(20),
          bottomLeft: me ? const Radius.circular(20) : const Radius.circular(0),
          bottomRight:
              me ? const Radius.circular(0) : const Radius.circular(20)),
    ));
  }
}
