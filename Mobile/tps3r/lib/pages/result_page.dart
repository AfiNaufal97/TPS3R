import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_assets.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/utils/routes/route_name.dart';
import 'package:tps3r/widgets/atom/button_widget.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/header_widget.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  // Note Rating
  // ignore: non_constant_identifier_names
  Widget RatingUs(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: MyColors.black),
          borderRadius: BorderRadius.circular(SizeResource.radius)),
      child: Column(
        children: [
          const SizedBox(
            height: SizeResource.marginM,
          ),
          TextWidget(
            text: StringResource.textGiveRate,
            style: FontsStyle.textTitleOnboarding,
          ),
          const SizedBox(
            height: SizeResource.marginVS,
          ),
          TextWidget(
            text: StringResource.textInformationRate,
            style: FontsStyle.textButtonOnboarding,
          ),
          const SizedBox(
            height: SizeResource.marginM,
          ),
          RatingBar.builder(
            initialRating: 3,
            minRating: 1,
            direction: Axis.horizontal,
            allowHalfRating: true,
            itemCount: 5,
            itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
            itemBuilder: (context, _) => const Icon(
              Icons.star,
              color: MyColors.main,
            ),
            onRatingUpdate: (rating) {
              print(rating);
            },
          ),
          const SizedBox(
            height: SizeResource.marginM,
          ),
        ],
      ),
    );
  }

  // Note : Attitude Officer
  // ignore: non_constant_identifier_names
  Widget AttitudeOfficer(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SizeResource.paddingS),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          border: Border.all(color: MyColors.black),
          borderRadius: BorderRadius.circular(SizeResource.radius)),
      child: Wrap(
        spacing: 10.0,
        children: [
          ButtonWidget(
              width: double.infinity,
              height: 30,
              textButton: StringResource.textKecepatanAngkut,
              function: () {},
              style: FontsStyle.textRegular,
              color: MyColors.green),
          ButtonWidget(
              width: double.infinity,
              height: 30,
              style: FontsStyle.textRegular,
              textButton: StringResource.textWaktuPenjemputan,
              function: () {},
              color: MyColors.green),
          ButtonWidget(
              width: double.infinity,
              height: 30,
              style: FontsStyle.textRegular,
              textButton: StringResource.textSikapPetugas,
              function: () {},
              color: MyColors.green),
          ButtonWidget(
              width: double.infinity,
              height: 30,
              style: FontsStyle.textRegular,
              textButton: StringResource.textPenentuanLokasi,
              function: () {},
              color: MyColors.green)
        ],
      ),
    );
  }

  //Note: Commentar
  Widget CommentarWidget(){
    return Column(
      children: [
        TextWidget(text: StringResource.textCommentar),
        
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            HeaderWidget(
              function: () {
                Navigator.pushNamedAndRemoveUntil(context, RoutesName.profile, (route) => false);
              },
              text: StringResource.textTitleResultPage,
              colorText: MyColors.green,
            ),
            const SizedBox(
              height: SizeResource.marginM,
            ),
            Image.asset(
              StringAssets.imgLogoGreen,
              width: SizeResource.sizeLogoM,
            ),
            Padding(
              padding: const EdgeInsets.all(SizeResource.padding),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextWidget(
                        text: StringResource.textTake,
                        style: FontsStyle.textButtonOnboarding,
                      ),
                      TextWidget(text: StringResource.textDate)
                    ],
                  ),
                  const SizedBox(
                    height: SizeResource.marginS,
                  ),
                  RatingUs(context),
                  const SizedBox(
                    height: SizeResource.marginS,
                  ),
                  AttitudeOfficer(context)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
