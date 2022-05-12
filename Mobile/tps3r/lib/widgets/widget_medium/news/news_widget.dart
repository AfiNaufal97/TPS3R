import 'package:flutter/material.dart';
import 'package:tps3r/widgets/widget_mini/image/image_widget.dart';
import 'package:tps3r/widgets/widget_mini/text/text_widget.dart';

// ignore: must_be_immutable
class NewsWidget extends StatelessWidget {
  bool internet;
  String pathImage;
  String text;
  int? maxLineContent;
  int? maxLineTitle;
  String text2;

  NewsWidget(
      {Key? key,
      required this.internet,
      required this.pathImage,
      required this.text,
      this.maxLineContent,
      this.maxLineTitle,
      required this.text2})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 7,
              offset: const Offset(0, 3), //
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              flex: 1,
              child: ImageWidget(internet: internet, pathImage: pathImage)),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: text,
                    maxLines: maxLineTitle,
                    sizeFont: 18,
                    fontWeight: FontWeight.bold,
                  ),
                  TextWidget(
                    text: text2,
                    maxLines: maxLineContent,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
