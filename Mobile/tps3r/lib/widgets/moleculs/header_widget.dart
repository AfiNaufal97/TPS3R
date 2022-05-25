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
  Widget? widget;
  void Function() function;
  HeaderWidget({Key? key, this.type, required this.function, this.text, this.widget}) : super(key: key);

  Widget option() {
    if (type == StringResource.type2) {
      return Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: SizeResource.paddingHorizontal),
        child: Row(
          children: [
            IconButtonWidget(
              icon: const Icon(Icons.arrow_back_ios),
              iconSize: 30,
              function: () {},
            ),
          ],
        ),
      );
    }
    return Container(
      decoration: BoxDecoration(color: MyColors.main),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: SizeResource.paddingHorizontal,
            vertical: SizeResource.paddingVertical),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButtonWidget(
              icon:  Icon(Icons.arrow_back_ios, color: MyColors.white,),
              iconSize: 30,
              function: () {},
            ),
            TextWidget(text: text ?? '', style: FontsStyle.textWhite,),
            widget?? const SizedBox(width: 35,)
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return option();
  }
}
