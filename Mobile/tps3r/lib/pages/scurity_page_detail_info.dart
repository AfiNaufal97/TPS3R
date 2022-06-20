import 'package:flutter/material.dart';
import 'package:tps3r/widgets/tempates/show_detal_info_tempaltes.dart';

// ignore: must_be_immutable
class ScurityPageInfoDetail extends StatelessWidget {
  String textHeader;
  String textTitleContent;
  Widget image;
  String date;
  String textNote;
  ScurityPageInfoDetail(
      {Key? key,
      required this.date,
      required this.image,
      required this.textHeader,
      required this.textNote,
      required this.textTitleContent})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ShowDetailInfoeTemplates(
        date: date,
        image: image,
        textHeader: textHeader,
        textNote: textNote,
        textTitleContent: textTitleContent,
      ),
    );
  }
}
