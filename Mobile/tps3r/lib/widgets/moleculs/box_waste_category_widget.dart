import 'package:flutter/material.dart';

import '../../resources/size_resource.dart';
import '../../resources/string_assets.dart';
import '../../resources/string_resource.dart';
import '../../utils/colors/colors_style.dart';
import '../../utils/fonts/fonts_style.dart';
import '../atom/text_widget.dart';

class BoxWasteCategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(StringAssets.imgSampahPlastik),
          ),
          const SizedBox(
            height: 10,
          ),
          TextWidget(
            text: StringResource.textTitleWasteCategoryPlastic,
            style: FontsStyle.textMedium.copyWith(color: MyColors.green),
          )
        ],
      ),
    );
  }
}
