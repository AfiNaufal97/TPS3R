import 'package:flutter/material.dart';

import '../../resources/size_resource.dart';
import '../../resources/string_assets.dart';
import '../../resources/string_resource.dart';
import '../../utils/colors/colors_style.dart';
import '../../utils/fonts/fonts_style.dart';
import '../atom/text_widget.dart';

// ignore: must_be_immutable
class ProfileWidget extends StatelessWidget {
  double? size;
  ProfileWidget({Key? key, this.size}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 150,
      padding: const EdgeInsets.only(top: SizeResource.padding),
      decoration: const BoxDecoration(
          color: MyColors.main,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(SizeResource.radiusBig),
              bottomRight: Radius.circular(SizeResource.radiusBig))),
      child: Padding(
        padding: const EdgeInsets.all(SizeResource.padding),
        child: Row(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                  radius: SizeResource.radiusImage,
                  backgroundImage: AssetImage(StringAssets.imgProfile)),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                TextWidget(
                  text: StringResource.sayHello,
                  style: FontsStyle.textMedium.copyWith(color: MyColors.green),
                ),
                TextWidget(
                  text: StringResource.textSelamatDatangBapeling,
                  style: FontsStyle.textRegular.copyWith(color: MyColors.green),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
