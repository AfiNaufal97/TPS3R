import 'package:flutter/material.dart';
import 'package:tps3r/utils/colors/colors.dart';
import 'package:tps3r/widgets/widget_medium/bubble_chat/bubble_chat_widget.dart';
import 'package:tps3r/widgets/widget_medium/header/header_widget.dart';
import 'package:tps3r/widgets/widget_mini/text/text_widget.dart';

// ignore: must_be_immutable
class ChatWidget extends StatelessWidget {
  String typeHeader;
  ChatWidget({Key? key, required this.typeHeader}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeaderWidget(type: typeHeader),
        BubbleChatWidget(
            internet: false,
            pathImage: 'assets/assets/image/logo.png',
            textBubble: 'hallo Gaes',
            me: false,
            color: mainColor,
            childWidget: TextWidget(text: 'hallo'))
      ],
    );
  }
}
