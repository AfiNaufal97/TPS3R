import 'package:flutter/material.dart';
import 'package:tps3r/utils/colors/colors.dart';
import 'package:tps3r/widgets/widget_mini/text/text_widget.dart';

// ignore: must_be_immutable
class LinkRegisterWidget extends StatelessWidget {
  String text;
  String textLink;
  LinkRegisterWidget({Key? key, required this.text, required this.textLink})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextWidget(
          text: text,
          sizeFont: 17,
        ),
        GestureDetector(
            onTap: () {},
            child: TextWidget(
              text: textLink,
              sizeFont: 17,
              textColor: mainColor,
            )),
      ],
    );
  }
}
