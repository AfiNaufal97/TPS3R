import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_assets.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/header_widget.dart';
import 'package:tps3r/widgets/moleculs/list_option_widget.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  // NOTE: section 1 / iduser
  // ignore: non_constant_identifier_names
  Widget IdUser(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: SizeResource.paddingHorizontal,
          vertical: SizeResource.paddingVertical2),
      width: MediaQuery.of(context).size.width,
      height: SizeResource.sizeBoxdetailID,
      decoration: const BoxDecoration(
          color: MyColors.main,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(SizeResource.radius),
              bottomRight: Radius.circular(SizeResource.radius))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            backgroundColor: MyColors.white,
            backgroundImage: AssetImage(StringAssets.imgProfile),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: StringResource.textNameDummy,
                style: FontsStyle.textMedium.copyWith(color: MyColors.green),
              ),
              TextWidget(
                text: StringResource.textEmailDummy,
                style: FontsStyle.textRegular.copyWith(color: MyColors.green),
              )
            ],
          )
        ],
      ),
    );
  }

  // Note: Pengaturan
  // ignore: non_constant_identifier_names
  Widget Pengaturan() {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: SizeResource.paddingHorizontal),
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: SizeResource.paddingHorizontal),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            TextWidget(
              text: StringResource.textPengaturan,
              style: FontsStyle.textMedium.copyWith(color: MyColors.black),
            ),
            const SizedBox(
              height: 20,
            ),
            ListOptionWidget(
                textTile: StringResource.textDataPropfile,
                textDesc: StringResource.textDescDataPropfile,
                icon: const Icon(
                  Icons.people,
                  size: 35,
                ),
                function: () {}),
            ListOptionWidget(
                textTile: StringResource.textDataPembayaran,
                textDesc: StringResource.textDescDataPembayaran,
                icon: const Icon(Icons.payment, size: 35),
                function: () {})
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(
              function: () {},
              text: StringResource.textAcccount,
              colorBackground: MyColors.white,
              colorText: MyColors.green,
            ),
            IdUser(context),
            Pengaturan()
          ],
        ),
      ),
    );
  }
}
