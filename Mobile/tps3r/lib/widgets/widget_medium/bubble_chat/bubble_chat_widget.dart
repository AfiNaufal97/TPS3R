import 'package:flutter/material.dart';
import '../../widget_mini/bubble_chat/bubble_widget.dart';

// ignore: must_be_immutable
class BubbleChatWidget extends StatelessWidget {
  bool imageFromInternet;
  String imagePath;
  bool user;
  String text;

  BubbleChatWidget(
      {Key? key,
      required this.imageFromInternet,
      required this.imagePath,
      required this.user,
      required this.text})
      : super(key: key);

  Widget result() {
    if (imageFromInternet) {
      return CircleAvatar(backgroundImage: NetworkImage(imagePath));
    } else {
      return CircleAvatar(backgroundImage: AssetImage(imagePath));
    }
  }

  Widget userOrAdmin() {
    if (user) {
      return Row(
         mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              result(),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BubbleWidget(user: user, text: text),
            ],
          )
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BubbleWidget(user: user, text: text),
            ],
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              result(),
            ],
          ),
        ],
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return userOrAdmin();
  }
}
