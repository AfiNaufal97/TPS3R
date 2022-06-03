import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

class ButtonTextWidget extends StatelessWidget {
  const ButtonTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: SizeResource.paddingHorizontal),
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            TextWidget(
              text: StringResource.locationNow,
              style: FontsStyle.textSmallBlack,
            ),
            const SizedBox(
              width: 5,
            ),
            const Icon(
              Icons.send,
              color: MyColors.main,
            )
          ],
        ),
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(MyColors.white)),
      ),
    );
  }
}
