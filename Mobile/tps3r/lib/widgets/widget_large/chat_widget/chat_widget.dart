import 'package:flutter/material.dart';
import 'package:tps3r/widgets/widget_medium/bubble_chat/bubble_chat_widget.dart';
import 'package:tps3r/widgets/widget_medium/header/header_widget.dart';
import 'package:tps3r/widgets/widget_medium/input_message/input_message_widget.dart';

// ignore: must_be_immutable
class ChatWidget extends StatelessWidget {
  String typeHeader;
  ChatWidget({Key? key, required this.typeHeader}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(color: Colors.white),
      child: Stack(children: [
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                const SizedBox(
                  height: 180,
                ),
                BubbleChatWidget(
                    imageFromInternet: false,
                    imagePath: 'assets/assets/image/img1.png',
                    user: false,
                    text: 'Hallo Gaes'),
                BubbleChatWidget(
                    imageFromInternet: false,
                    imagePath: 'assets/assets/image/img1.png',
                    user: true,
                    text: 'Hallo Gaes'),
                BubbleChatWidget(
                    imageFromInternet: false,
                    imagePath: 'assets/assets/image/img1.png',
                    user: false,
                    text: 'Hallo Gaes'),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
        const Align(alignment: Alignment.bottomCenter, child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: InputMessageWidget(),
        )),
        const HeaderWidget(type: 'chat')
      ]),
    );
  }
}
