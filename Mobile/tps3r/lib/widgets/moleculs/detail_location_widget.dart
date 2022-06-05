import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/icon_text_widget.dart';

class DetailLocationWidget extends StatelessWidget {
  const DetailLocationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(SizeResource.paddingS),
      width: MediaQuery.of(context).size.width - 70,
      height: 250,
      decoration: BoxDecoration(
          color: MyColors.white,
          borderRadius: BorderRadius.circular(SizeResource.radius)),
      child: Column(
        children: [
          Image.asset('assets/assets/image/tps.png'),
          TextWidget(
            text: StringResource.tps3rKubuLestariPamongan,
            style: FontsStyle.textMedium,
          ),
          IconTextWidget(
              widget: const Icon(
                Icons.location_pin,
                size: 25,
              ),
              text: StringResource.textLocationTps3r),
          IconTextWidget(
              widget: const Icon(
                Icons.timer_sharp,
                size: 25,
              ),
              text: StringResource.textTitleTimeOpen),
          Row(
            children: [
              const SizedBox(width: SizeResource.marginL),
              TextWidget(text: StringResource.textValueTimeOpen,)],
          )
        ],
      ),
    );
  }
}
