import 'package:flutter/material.dart';

import '../image/image_widget.dart';

// ignore: must_be_immutable
class ButtonIconWidget extends StatelessWidget {
  double? sizeIcon;
  bool internet;
  String pathImage;
  ButtonIconWidget({Key? key, this.sizeIcon, required this.internet, required this.pathImage}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return IconButton(
        iconSize: sizeIcon ?? 20,
        onPressed: () {},
        icon: ImageWidget(internet: internet, pathImage: pathImage));
  }
}
