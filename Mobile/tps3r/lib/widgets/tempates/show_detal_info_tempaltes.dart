import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/header_widget.dart';

class ShowDetailInfoeTemplates extends StatelessWidget {
  String textHeader;
  String textTitleContent;
  Widget image;
  String date;
  String textNote;
  ShowDetailInfoeTemplates(
      {Key? key,
      required this.date,
      required this.image,
      required this.textHeader,
      required this.textNote,
      required this.textTitleContent})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderWidget(text: textHeader, function: () {}),
            Padding(
              padding: const EdgeInsets.all(SizeResource.marginS),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: textTitleContent,
                    style: FontsStyle.textMedium,
                  ),
                  const SizedBox(
                    height: SizeResource.marginS,
                  ),
                  TextWidget(
                    text: date,
                    style: FontsStyle.textSmall,
                  ),
                  const SizedBox(
                    height: SizeResource.marginL,
                  ),
                  Center(
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
                      height: MediaQuery.of(context).size.height - 200,
                      child: image,
                    ),
                  ),
                  const SizedBox(
                    height: SizeResource.marginS,
                  ),
                  TextWidget(
                    text: textNote,
                    style: FontsStyle.textSmall,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
