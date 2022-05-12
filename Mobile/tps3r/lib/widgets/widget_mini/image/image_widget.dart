import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ImageWidget extends StatelessWidget {
  bool internet;
  String pathImage;
  double? whith;
  double? height;
  ImageWidget(
      {Key? key, required this.internet, required this.pathImage, this.whith, this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return internet
        ? Image.network(
            pathImage,
            width: whith ?? 150,
            height: height??150,
          )
        : Image.asset(pathImage, width: whith ?? 150, height: height ?? 150,);
  }
}
