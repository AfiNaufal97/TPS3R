import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_assets.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

// ignore: non_constant_identifier_names
Widget CarouselWidget (){
    return Container(
      padding: const EdgeInsets.all(SizeResource.padding),
      decoration: BoxDecoration(
          color: MyColors.white,
          boxShadow: const [
            BoxShadow(
                blurRadius: 10,
                blurStyle: BlurStyle.outer,
                color: MyColors.grey,
                spreadRadius: 0.9,
                offset: Offset.zero)
          ],
          borderRadius: BorderRadius.circular(SizeResource.radius)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextWidget(text: StringResource.textTitleCarousel, style: FontsStyle.textMedium.copyWith(
                  color: MyColors.green
                ),),
                TextWidget(text: StringResource.textValueCarousel)
              ],
            ),
          ),
          const SizedBox(width: 5,),
          Image.asset(
            StringAssets.imgCarousel,
            width: 80,
          )
        ],
      ),
    );
  }
