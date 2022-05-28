import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/icon_button_widget.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

class ListOptionWidget extends StatelessWidget {
  String textTile;
  String? textDesc;
  Widget icon;
  void Function() function;
  ListOptionWidget(
      {Key? key,
      required this.textTile,
      this.textDesc,
      required this.icon,
      required this.function})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (textDesc == null) {
      return Row(
        children: [
          Expanded(child: icon),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                TextWidget(
                  text: textTile,
                  style: FontsStyle.textMedium,
                )
              ],
            ),
          ),
          Expanded(
            child: IconButtonWidget(
                icon: const Icon(Icons.navigate_next_outlined),
                iconSize: SizeResource.iconSizeNext,
                function: function),
          )
        ],
      );
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            icon,
            const SizedBox(
              width: SizeResource.paddingHorizontal2,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(
                  text: textTile,
                  style: FontsStyle.textMedium,
                ),
                TextWidget(
                  text: textTile,
                  style: FontsStyle.textSmall,
                )
              ],
            ),
          ],
        ),
        IconButtonWidget(
            icon: const Icon(Icons.navigate_next_outlined),
            iconSize: SizeResource.iconSizeNext,
            function: function)
      ],
    );
  }
}
