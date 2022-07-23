import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tps3r/pages/detail_sampah_page.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_assets.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/utils/routes/route_name.dart';
import 'package:tps3r/widgets/atom/button_widget.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/box_news_widget.dart';
import 'package:tps3r/widgets/moleculs/box_waste_category_widget.dart';
import 'package:tps3r/widgets/moleculs/carousel_widget.dart';
import 'package:tps3r/widgets/moleculs/icon_text_widget.dart';
import 'package:tps3r/widgets/moleculs/profile_widget.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  List<String> sampah = StringResource.listWaste;
  HomePage({Key? key}) : super(key: key);

  int valueImg = 0;
  PageController controller = PageController(initialPage: 0);

  // Note: Carousel
  // ignore: non_constant_identifier_names
  Widget CarouselSliderWidget() {
    return SizedBox(
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              autoPlay: false,
              enlargeCenterPage: true,
              viewportFraction: 0.7,
              aspectRatio: 2.0,
              initialPage: 2,
              height: 110,
            ),
            items:  [
              CarouselWidget(),
              CarouselWidget(),
              CarouselWidget(),
            ],
          ),
        ],
      ),
    );
  }

  // Note: Category Sampah
  // ignore: non_constant_identifier_names
  Widget WasteCategory(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: StringResource.textTitleWasteCategory,
          style: FontsStyle.textButtonOnboarding.copyWith(fontSize: 18),
        ),
        const SizedBox(
          height: 10,
        ),
        GestureDetector(
          onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> DetailSampahPage())),
          child: SizedBox(
            height: 150,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                itemBuilder: (context, value) => BoxWasteCategoryWidget(context,
                      text: sampah[value],
                    )),
          ),
        )
      ],
    );
  }

  // Note: News
  // ignore: non_constant_identifier_names
  Widget BoxNews(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextWidget(
          text: StringResource.textTitleNewsCategory,
          style: FontsStyle.textButtonOnboarding.copyWith(fontSize: 18),
        ),
        // SizedBox(
        //   height:800,
        //   child: ListView.builder(
        //     itemCount: 4,
        //     itemBuilder:(context, index){
        //       return const BoxNewsWidget();
        //     } ),
        BoxNewsWidget(context)
        // ListWheelScrollView(itemExtent: 10, children: const [BoxNewsWidget()])
      ],
    );
  }

  // Note: Box Point
  // ignore: non_constant_identifier_names
  Widget BoxPoint(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(SizeResource.padding),
      width: MediaQuery.of(context).size.width - 70,
      decoration: BoxDecoration(
          color: MyColors.white,
          boxShadow: const [
            BoxShadow(
                blurRadius: 0.9,
                blurStyle: BlurStyle.outer,
                color: MyColors.grey,
                spreadRadius: 0.9)
          ],
          borderRadius: BorderRadius.circular(SizeResource.radius)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: StringResource.saldoBapeling,
                      style: FontsStyle.textSmall.copyWith(
                          fontWeight: FontWeight.w700, color: MyColors.green),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    IconTextWidget(
                        widget: const CircleAvatar(
                          backgroundColor: MyColors.main,
                          backgroundImage: AssetImage(
                            StringAssets.imgMoney,
                          ),
                        ),
                        text: StringResource.textMoneySaldo),
                  ],
                ),
              ),
              Container(
                height: 50,
                margin: const EdgeInsets.symmetric(
                    horizontal: SizeResource.marginM),
                width: 3,
                decoration: const BoxDecoration(color: MyColors.grey),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: StringResource.pointBapelling,
                      style: FontsStyle.textSmall.copyWith(
                          fontWeight: FontWeight.w700, color: MyColors.green),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    IconTextWidget(
                        widget: const CircleAvatar(
                          backgroundColor: MyColors.main,
                          backgroundImage: AssetImage(StringAssets.imgCoint),
                        ),
                        text: StringResource.textCointSaldo),
                  ],
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: ButtonWidget(
                  style:
                      FontsStyle.textSmallBold.copyWith(color: MyColors.white),
                  textButton: StringResource.textScanSampah,
                  function: () {
                    Navigator.pushNamed(
                        context, RoutesName.informationWastePage);
                  },
                  width: MediaQuery.of(context).size.width - 120,
                  color: MyColors.green,
                  radius: SizeResource.radius,
                  height: SizeResource.heightButtonScanWaste,
                ),
              ),
              const SizedBox(
                width: SizeResource.marginS,
              ),
              Expanded(
                child: ButtonWidget(
                  style:
                      FontsStyle.textSmallBold.copyWith(color: MyColors.white),
                  textButton: StringResource.textJoinButton,
                  function: () {
                    Navigator.pushNamed(
                        context, RoutesName.orderPage);
                  },
                  width: MediaQuery.of(context).size.width - 120,
                  color: MyColors.green,
                  radius: SizeResource.radius,
                  height: SizeResource.heightButtonScanWaste,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileWidget(
                home: true,
              ),
              const SizedBox(
                height: 110,
              ),
              Padding(
                padding: const EdgeInsets.all(SizeResource.padding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CarouselSliderWidget(),
                    const SizedBox(
                      height: 30,
                    ),
                    WasteCategory(context),
                    const SizedBox(
                      height: 30,
                    ),
                    BoxNews(context),
                  ],
                ),
              )
            ],
          ),
          Positioned(top: 100, child: BoxPoint(context))
        ],
      ),
    );
  }
}
