import 'package:flutter/material.dart';
import 'package:tps3r/pages/detail_news_page.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_assets.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

Widget BoxNewsWidget (BuildContext context){
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => DetailNewsPage())),
      child: Container(
        padding: EdgeInsets.all(SizeResource.paddingS),
        margin: const EdgeInsets.all(SizeResource.marginS),
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              StringAssets.imgNews, fit: BoxFit.fill,
              width: 100,
              height: 100,
            ),
            const SizedBox(width: SizeResource.marginVS,),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidget(
                    text: StringResource.textTitleNews,
                    maxLine: 2,
                    style: FontsStyle.textRegular.copyWith(
                        color: MyColors.green, fontWeight: FontWeight.w700),
                  ),
                  TextWidget(
                    text: StringResource.textValueNews,
                    maxLine: 3,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
