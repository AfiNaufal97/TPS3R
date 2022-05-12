import 'package:flutter/material.dart';
import 'package:tps3r/widgets/widget_mini/bubble_chat/bubble_chat_widget.dart';
import 'package:tps3r/widgets/widget_mini/image/image_widget.dart';

// ignore: must_be_immutable
class BubbleChatWidget extends StatelessWidget {
  bool internet;
  String pathImage;
  String textBubble;
  bool me;
  Color color;
  Widget childWidget;
  BubbleChatWidget(
      {Key? key, required this.internet,
      required this.pathImage,
      required this.textBubble,
      required this.me,
      required this.color,
      required this.childWidget}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageWidget(internet: internet, pathImage: pathImage, whith: 30,),
        Container(
          width: 100,
          color: Colors.red,
        ),
        BubbleWidget(me: me, color: color, childWidget: childWidget)
      ],
    );
  }
}
