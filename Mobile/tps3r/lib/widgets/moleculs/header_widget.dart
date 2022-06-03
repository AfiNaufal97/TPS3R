import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/icon_button_widget.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

// ignore: must_be_immutable
class HeaderWidget extends StatelessWidget {
  String? type;
  String? text;
  Color? colorBackground;
  Color? colorText;
  Widget? widget;
  void Function() function;
  HeaderWidget(
      {Key? key,
      this.type,
      required this.function,
      this.text,
      this.widget,
      this.colorBackground = MyColors.main,
      this.colorText = MyColors.white})
      : super(key: key);

  Widget option(BuildContext context) {
    if (type == StringResource.type2) {
      return Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: SizeResource.paddingHorizontal),
        child: Row(
          children: [
            IconButtonWidget(
              icon: const Icon(Icons.arrow_back_ios),
              iconSize: 30,
              function: function,
            ),
          ],
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(color: colorBackground ?? MyColors.main),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: SizeResource.paddingHorizontal,
            vertical: SizeResource.paddingVertical),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButtonWidget(
              icon: Icon(
                Icons.arrow_back_ios,
                color: colorText == MyColors.green
                    ? MyColors.green
                    : MyColors.white,
              ),
              iconSize: 30,
              function: function,
            ),
            TextWidget(
              text: text ?? '',
              style: FontsStyle.textWhite
                  .copyWith(color: colorText ?? MyColors.white),
            ),
            widget ??
                const SizedBox(
                  width: 35,
                )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return option(context);
  }
}
