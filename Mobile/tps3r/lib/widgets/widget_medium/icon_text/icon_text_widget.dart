import 'package:flutter/material.dart';
import 'package:tps3r/widgets/widget_mini/icon_button/icon_button_widget.dart';
import 'package:tps3r/widgets/widget_mini/text/text_widget.dart';

// ignore: must_be_immutable
class IconTextWidget extends StatelessWidget {
  IconData icon;
  String? type;
  String? text;
  double? size;
  Color? color;
  IconTextWidget(
      {Key? key,
      required this.icon,
      this.text,
      this.size,
      this.type,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: type == null
          ? const EdgeInsets.all(0)
          : type == 'nav'
              ? const EdgeInsets.all(0)
              : const EdgeInsets.symmetric(horizontal: 30),
      child: Row(
        children: [
          IconButtonWidget(
            icon: icon,
            color: color,
          ),
          text != null
              ? TextWidget(
                  text: text!,
                  sizeFont: size ?? 15,
                  textColor: color ?? Colors.black,
                  fontWeight: type == 'nav' ? FontWeight.bold : FontWeight.w400)
              : Container(),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
