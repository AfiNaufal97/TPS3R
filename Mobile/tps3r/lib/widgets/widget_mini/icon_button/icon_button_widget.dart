import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconButtonWidget extends StatelessWidget {
  IconData icon;
  Color? color;
  IconButtonWidget({Key? key, required this.icon, this.color})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {}, child: Icon(icon, color: color?? Colors.black,),);
  }
}
