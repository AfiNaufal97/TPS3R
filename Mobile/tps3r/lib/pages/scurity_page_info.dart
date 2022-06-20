import 'package:flutter/material.dart';
import 'package:tps3r/pages/scurity_page_detail_info.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_assets.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/header_widget.dart';
import 'package:tps3r/widgets/moleculs/list_widget.dart';

class ScurityPageInfo extends StatelessWidget {
  const ScurityPageInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderWidget(
                  colorText: MyColors.green,
                  text: StringResource.protectedYourAccoundTitlte,
                  function: () {}),
              Padding(
                padding: const EdgeInsets.all(SizeResource.paddingS),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: SizeResource.marginS,
                    ),
                    ListWidget(
                      function: () {},
                      prefixWidget: Image.asset(
                        StringAssets.imgShield,
                        width: SizeResource.iconSize,
                      ),
                      title: StringResource.protectedYourAccoundTitlte,
                      style: FontsStyle.textMedium,
                    ),
                    const SizedBox(
                      height: SizeResource.marginL,
                    ),
                    TextWidget(
                      text: StringResource.textTitleInformationData,
                      style: FontsStyle.textSmallBold,
                    ),
                    const SizedBox(
                      height: SizeResource.marginS,
                    ),
                    ListWidget(
                      function: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScurityPageInfoDetail(
                                    date: StringResource.textDateUpdate,
                                    image: Image.asset(
                                        StringAssets.imgScurityAccount,
                                        fit: BoxFit.fill),
                                    textHeader: StringResource.textDetail,
                                    textNote: StringResource.textNote,
                                    textTitleContent: StringResource
                                        .protectedYourAccoundTitlte,
                                  ))),
                      title: StringResource.textWeCare,
                      style: FontsStyle.textSmall,
                      suffix: const Icon(
                        Icons.navigate_next_rounded,
                        size: SizeResource.iconSize,
                      ),
                    ),
                    const SizedBox(
                      height: SizeResource.marginS,
                    ),
                    ListWidget(
                      function: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScurityPageInfoDetail(
                                    date: StringResource.textDateUpdate,
                                    image: Image.asset(StringAssets.imgPrivacy,
                                        fit: BoxFit.fill),
                                    textHeader: StringResource.textDetail,
                                    textNote: StringResource.textNote,
                                    textTitleContent: StringResource.textWeCare,
                                  ))),
                      title: StringResource.textTerms,
                      style: FontsStyle.textSmall,
                      suffix: const Icon(
                        Icons.navigate_next_rounded,
                        size: SizeResource.iconSize,
                      ),
                    ),
                    const SizedBox(
                      height: SizeResource.marginM,
                    ),
                    TextWidget(
                        text: StringResource.textDataUsersTitle,
                        style: FontsStyle.textSmallBold),
                    const SizedBox(
                      height: SizeResource.marginS,
                    ),
                    ListWidget(
                      function: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScurityPageInfoDetail(
                                    date: StringResource.textDateUpdate,
                                    image: Image.asset(
                                      StringAssets.imgAnother,
                                      fit: BoxFit.fill,
                                    ),
                                    textHeader: StringResource.textDetail,
                                    textNote: StringResource.textNote,
                                    textTitleContent: StringResource.textTerms,
                                  ))),
                      title: StringResource.textDataUSerinfo1,
                      style: FontsStyle.textSmall,
                      suffix: const Icon(
                        Icons.navigate_next_rounded,
                        size: SizeResource.iconSize,
                      ),
                    ),
                    const SizedBox(
                      height: SizeResource.marginS,
                    ),
                    ListWidget(
                      function: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScurityPageInfoDetail(
                                    date: StringResource.textDateUpdate,
                                    image: Image.asset(
                                        StringAssets.imgSaveDataUser,
                                        fit: BoxFit.fill),
                                    textHeader: StringResource.textDetail,
                                    textNote: StringResource.textNote,
                                    textTitleContent:
                                        StringResource.textDataUserinfo2,
                                  ))),
                      title: StringResource.textDataUserinfo2,
                      style: FontsStyle.textSmall,
                      suffix: const Icon(
                        Icons.navigate_next_rounded,
                        size: SizeResource.iconSize,
                      ),
                    ),
                    const SizedBox(
                      height: SizeResource.marginS,
                    ),
                    ListWidget(
                      function: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScurityPageInfoDetail(
                                    date: StringResource.textDateUpdate,
                                    image: Image.asset(
                                        StringAssets.imgTypeDataPrivacy,
                                        fit: BoxFit.fill),
                                    textHeader: StringResource.textDetail,
                                    textNote: StringResource.textNote,
                                    textTitleContent:
                                        StringResource.textDataUserinfo3,
                                  ))),
                      title: StringResource.textDataUserinfo3,
                      style: FontsStyle.textSmall,
                      suffix: const Icon(
                        Icons.navigate_next_rounded,
                        size: SizeResource.iconSize,
                      ),
                    ),
                    const SizedBox(
                      height: SizeResource.marginM,
                    ),
                    TextWidget(
                        text: StringResource.textOffAccount,
                        style: FontsStyle.textSmallBold),
                    const SizedBox(
                      height: SizeResource.marginS,
                    ),
                    ListWidget(
                      function: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScurityPageInfoDetail(
                                    date: StringResource.textDateUpdate,
                                    image: Image.asset(
                                        StringAssets.imgOffAccount,
                                        fit: BoxFit.fill),
                                    textHeader: StringResource.textDetail,
                                    textNote: StringResource.textNote,
                                    textTitleContent:
                                        StringResource.textHowToOffAccount,
                                  ))),
                      title: StringResource.textHowToOffAccount,
                      style: FontsStyle.textSmall,
                      suffix: const Icon(
                        Icons.navigate_next_rounded,
                        size: SizeResource.iconSize,
                      ),
                    ),
                    const SizedBox(
                      height: SizeResource.marginS,
                    ),
                    TextWidget(
                        text: StringResource.textContactMe,
                        style: FontsStyle.textSmallBold),
                    const SizedBox(
                      height: SizeResource.marginS,
                    ),
                    ListWidget(
                      function: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ScurityPageInfoDetail(
                                    date: StringResource.textDateUpdate,
                                    image: Image.asset(
                                        StringAssets.imgAdminForUserData,
                                        fit: BoxFit.fill),
                                    textHeader: StringResource.textDetail,
                                    textNote: StringResource.textNote,
                                    textTitleContent:
                                        StringResource.textContactMe,
                                  ))),
                      title: StringResource.textConatctMeInfo,
                      style: FontsStyle.textSmall,
                      suffix: const Icon(
                        Icons.navigate_next_rounded,
                        size: SizeResource.iconSize,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
