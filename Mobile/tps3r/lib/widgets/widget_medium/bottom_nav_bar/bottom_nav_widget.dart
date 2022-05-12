import 'package:flutter/material.dart';
import 'package:tps3r/utils/colors/colors.dart';
import 'package:tps3r/widgets/widget_medium/icon_text/icon_text_widget.dart';

class ButtonNavWidget extends StatelessWidget {
  const ButtonNavWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 60,
      decoration: BoxDecoration(color: mainColor.withOpacity(0.8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            height: 40,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: IconTextWidget(
              icon: Icons.home,
              text: 'Home',
              color: mainColor,
              type: 'nav',
            ),
          ),
          IconTextWidget(icon: Icons.message),
          IconTextWidget(icon: Icons.person)
        ],
      ),
    );
  }
}
