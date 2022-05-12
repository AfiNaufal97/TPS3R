import 'package:flutter/material.dart';
import 'package:tps3r/utils/colors/colors.dart';
import 'package:tps3r/widgets/widget_mini/text/text_widget.dart';

import '../../widget_mini/icon_button/icon_button_widget.dart';

class HeaderChatWidget extends StatelessWidget {
  const HeaderChatWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      height: 150,
      decoration: const BoxDecoration(
          color: mainColor,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButtonWidget(icon: Icons.arrow_back_ios),
            IconButtonWidget(icon: Icons.help)
          ],
        ),
        SizedBox(
            width: 235,
            child: TextWidget(
                textColor: Colors.white,
                fontWeight: FontWeight.w600,
                text:
                    'Selamat Pagi, Bapeling selalu ada untuk kebersihan lingkungan tempat tinggal kamu. Kami akan selalu membantukamu ')),
      ]),
    );
  }
}
