import 'package:flutter/material.dart';
import 'package:tps3r/widgets/widget_medium/header/header_chat_widget.dart';
import 'package:tps3r/widgets/widget_mini/icon_button/icon_button_widget.dart';
import 'package:tps3r/widgets/widget_mini/text/text_widget.dart';

class HeaderWidget extends StatelessWidget {
  final String type;

  // NOTE: Widget berdasarkan type
  Widget result(String type) {
    if (type == 'profile') {
      return Row(children: [
        IconButtonWidget(icon: Icons.arrow_back_ios),
        TextWidget(
          text: 'Profile',
          sizeFont: 20,
          fontWeight: FontWeight.bold,
        ),
        IconButtonWidget(icon: Icons.settings)
      ]);
    }

    if (type == 'chat') {
      return HeaderChatWidget();
    }
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      IconButtonWidget(icon:Icons.arrow_back_ios),
      IconButtonWidget(icon: Icons.help)
    ]);
  }

  const HeaderWidget({Key? key, required this.type}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return result(type);
  }
}
