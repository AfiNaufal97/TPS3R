import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

class BoxNewsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(SizeResource.marginM),
      decoration: BoxDecoration(
          color: MyColors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 0.9,
                blurStyle: BlurStyle.outer,
                color: MyColors.grey,
                spreadRadius: 0.9)
          ],
          borderRadius: BorderRadius.circular(SizeResource.radius)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Icon(
            Icons.newspaper,
            size: 150,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextWidget(
                  text: StringResource.textTitleNews,
                  maxLine: 2,
                  style: FontsStyle.textRegular.copyWith(
                      color: MyColors.green, fontWeight: FontWeight.w700),
                ),
                TextWidget(
                  text: StringResource.textValueNews,
                  maxLine: 3,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
