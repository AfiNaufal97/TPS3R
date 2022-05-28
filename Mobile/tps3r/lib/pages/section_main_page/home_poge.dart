import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_assets.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/box_news_widget.dart';
import 'package:tps3r/widgets/moleculs/box_waste_category_widget.dart';
import 'package:tps3r/widgets/moleculs/carousel_widget.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
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
                onPageChanged: (int, CarouselPageChangedReason) {}),
            items: const [
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
        SizedBox(
          height: 150,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, value) => BoxWasteCategoryWidget()),
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
        SizedBox(
          height: MediaQuery.of(context).size.height,
          child: ListView.builder(
              itemCount: 5, itemBuilder: (context, value) => BoxNewsWidget()),
        ),
      ],
    );
  }

  // Note: Box Point
  // ignore: non_constant_identifier_names
  Widget BoxPoint() {
    return Container(
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
            children: [
              
            ],
          ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          decoration: const BoxDecoration(
              color: MyColors.main,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(SizeResource.radiusBig),
                  bottomRight: Radius.circular(SizeResource.radiusBig))),
          child: Padding(
            padding: const EdgeInsets.all(SizeResource.padding),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(StringAssets.imgProfile)),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextWidget(
                      text: StringResource.sayHello,
                      style:
                          FontsStyle.textMedium.copyWith(color: MyColors.green),
                    ),
                    TextWidget(
                      text: StringResource.textSelamatDatangBapeling,
                      style: FontsStyle.textRegular
                          .copyWith(color: MyColors.green),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 30,
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
              BoxNews(context)
            ],
          ),
        )
      ],
    );
  }
}
