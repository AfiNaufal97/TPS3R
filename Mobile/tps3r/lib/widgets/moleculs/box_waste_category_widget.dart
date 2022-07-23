import 'package:flutter/material.dart';

import '../../resources/size_resource.dart';
import '../../resources/string_assets.dart';
import '../../utils/colors/colors_style.dart';
import '../../utils/fonts/fonts_style.dart';
import '../atom/text_widget.dart';

// ignore: non_constant_identifier_names
Widget BoxWasteCategoryWidget(BuildContext context, {required String text}){
    return Container(
      padding: const EdgeInsets.all(SizeResource.padding),
      margin: const EdgeInsets.only(right: SizeResource.marginL),
      width: 110,
      height: 150,
      decoration: BoxDecoration(
          color: MyColors.main,
          borderRadius: BorderRadius.circular(SizeResource.radius)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(StringAssets.imgSampahPlastik),
          ),
          const SizedBox(
            height: 10,
          ),
          TextWidget(
            text: text,
            style: FontsStyle.textMedium.copyWith(color: MyColors.green),
          )
        ],
      ),
    );
  }
