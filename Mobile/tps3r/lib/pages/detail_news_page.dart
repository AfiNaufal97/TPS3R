import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_assets.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/header_widget.dart';

class DetailNewsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(
                text: StringResource.textTitleNewsCategory,
                colorText: MyColors.green,
                function: () {}),
            Padding(
              padding: EdgeInsets.all(SizeResource.padding),
              child: Column(
                children: [
                  const SizedBox(
                    height: SizeResource.marginM,
                  ),
                  TextWidget(
                    text: StringResource.textTitleContentNews,
                    style: FontsStyle.textMedium,
                  ),
                  const SizedBox(
                    height: SizeResource.marginM,
                  ),
                  Image.asset(StringAssets.imgNews),
                   const SizedBox(
                    height: SizeResource.marginM,
                  ),
                  const Text(StringResource.textTitleValueNews)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
