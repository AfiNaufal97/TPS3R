import 'package:flutter/material.dart';
import 'package:tps3r/pages/scurity_page_detail_info.dart';
import 'package:tps3r/pages/scurity_page_info.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/header_widget.dart';
import 'package:tps3r/widgets/moleculs/list_widget.dart';

import '../resources/string_assets.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({Key? key}) : super(key: key);

  // ignore: non_constant_identifier_names
  Widget BoxTop(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 80,
      decoration: const BoxDecoration(color: MyColors.main),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: SizeResource.padding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextWidget(
              text: StringResource.textSayFromFaq,
              style: FontsStyle.textRegular.copyWith(color: MyColors.green),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  // Note: List Faq
  // ignore: non_constant_identifier_names
  List<Widget> ListFaq(BuildContext context) {
    List<String> listText = [
      StringResource.textLatePay,
      StringResource.textWhenIUsePoint,
      StringResource.textWhenIUsePoint,
      StringResource.textChangePick
    ];

    List<String> listImage = [
      StringAssets.imgHowToPay,
      StringAssets.imgHowToPayWithCoint,
      StringAssets.imgHowToChangePay
    ];
    return listText
        .map((e) => Column(
              children: [
                ListWidget(
                  function: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ScurityPageInfoDetail(
                                date: StringResource.textDateUpdate,
                                image: Image.asset(StringAssets.imgHowToPay,
                                    fit: BoxFit.fill),
                                textHeader: StringResource.textDetail,
                                textNote: StringResource.textNote,
                                textTitleContent: e,
                              ))),
                  title: e,
                  suffix: const Icon(Icons.navigate_next),
                  style: FontsStyle.textRegular.copyWith(color: MyColors.green),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ))
        .toList();
  }

  //Note: Box Topik
  // ignore: non_constant_identifier_names
  Widget ContainerTopik(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: MyColors.grey),
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(SizeResource.paddingS),
        child: Column(
          children: [
            ListWidget(
              function: () {},
              prefixWidget: const Icon(
                Icons.file_copy,
                size: SizeResource.iconSize,
              ),
              title: StringResource.textPolicy,
              style: FontsStyle.textRegular,
            ),
            const SizedBox(
              height: SizeResource.marginS,
            ),
            ListWidget(
              function: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ScurityPageInfo())),
              prefixWidget: const Icon(
                Icons.privacy_tip_outlined,
                size: SizeResource.iconSize,
              ),
              title: StringResource.textPrivacy,
              style: FontsStyle.textRegular,
            ),
            const SizedBox(
              height: SizeResource.marginS,
            ),
            ListWidget(
              function: () {},
              prefixWidget: const Icon(
                Icons.other_houses_outlined,
                size: SizeResource.iconSize,
              ),
              title: StringResource.textOther,
              style: FontsStyle.textRegular,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(
              function: () {},
              text: StringResource.textFaq,
              colorText: MyColors.green,
              colorBackground: MyColors.white,
            ),
            BoxTop(context),
            Padding(
              padding: const EdgeInsets.all(SizeResource.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: SizeResource.marginM,
                  ),
                  Column(children: ListFaq(context)),
                  const SizedBox(
                    height: 20,
                  ),
                  TextWidget(
                    text: StringResource.textTitleTopik,
                    style: FontsStyle.textMedium,
                  ),
                  const SizedBox(
                    height: SizeResource.marginS,
                  ),
                  ContainerTopik(context)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
