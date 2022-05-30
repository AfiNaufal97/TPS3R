import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:lottie/lottie.dart';
import 'package:tps3r/resources/string_assets.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/utils/routes/route_name.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IntroductionScreen(
          animationDuration: 1000,
          dotsDecorator: const DotsDecorator(
              activeColor: MyColors.green,
              color: MyColors.white,
              spacing: EdgeInsets.all(1),
              activeSize: Size(30, 10),
              activeShape: OutlineInputBorder(
                  borderSide: BorderSide(color: MyColors.green))),
          globalBackgroundColor: MyColors.main,
          done: TextWidget(
            text: StringResource.textSelesai,
            style: FontsStyle.textButtonOnboarding,
          ),
          onDone: () {
            Navigator.pushNamedAndRemoveUntil(context, RoutesName.login, (route) => false);
          },
          next: TextWidget(
            text: StringResource.textNext,
            style: FontsStyle.textButtonOnboarding,
          ),
          skip: TextWidget(
            text: StringResource.textSkip,
            style: FontsStyle.textButtonOnboarding,
          ),
          showSkipButton: true,
          pages: [
            PageViewModel(
                image: Image.asset(
                  StringAssets.imgLogoWhite,
                  width: 200,
                ),
                titleWidget: TextWidget(
                  text: StringResource.textSelamatDatangBapeling,
                  style: FontsStyle.textTitleOnboarding,
                ),
                bodyWidget: TextWidget(
                  text: StringResource.textValueOnBording1,
                  style: FontsStyle.textBodyOnboarding,
                  textAlign: TextAlign.center,
                )),
            PageViewModel(
                decoration: const PageDecoration(pageColor: MyColors.main),
                image: CircleAvatar(
                  radius: 100,
                  backgroundColor: MyColors.white,
                  child: Image.asset(
                    StringAssets.imgWaste,
                    width: 150,
                  ),
                ),
                titleWidget: TextWidget(
                  text: StringResource.textPilahSampahmu,
                  style: FontsStyle.textTitleOnboarding,
                ),
                bodyWidget: TextWidget(
                  text: StringResource.textValuePilahSampah,
                  style: FontsStyle.textBodyOnboarding,
                  textAlign: TextAlign.center,
                )),
            PageViewModel(
                decoration: const PageDecoration(pageColor: MyColors.main),
                image: CircleAvatar(
                  radius: 100,
                  backgroundColor: MyColors.white,
                  child: Lottie.asset(
                    StringAssets.imgChoose,
                    width: 200,
                  ),
                ),
                titleWidget: TextWidget(
                  text: StringResource.textPilihPaketPenjemputan,
                  style: FontsStyle.textTitleOnboarding,
                ),
                bodyWidget: TextWidget(
                  text: StringResource.textValuePilihPaketPenjemputan,
                  style: FontsStyle.textBodyOnboarding,
                  textAlign: TextAlign.center,
                )),
            PageViewModel(
                decoration: const PageDecoration(pageColor: MyColors.main),
                image: CircleAvatar(
                  radius: 100,
                  backgroundColor: MyColors.white,
                  child: Lottie.asset(
                    StringAssets.imgDiscount,
                    width: 250,
                  ),
                ),
                titleWidget: TextWidget(
                  text: StringResource.textTitleDiscount,
                  style: FontsStyle.textTitleOnboarding,
                ),
                bodyWidget: TextWidget(
                  text: StringResource.textValueDiscount,
                  style: FontsStyle.textBodyOnboarding,
                  textAlign: TextAlign.center,
                ))
          ],
        ),
      ),
    );
  }
}
