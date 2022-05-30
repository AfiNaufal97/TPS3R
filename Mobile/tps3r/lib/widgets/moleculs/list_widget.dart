import 'package:flutter/material.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

// ignore: must_be_immutable
class ListWidget extends StatelessWidget {
  String title;
  String? desc;
  Widget prefixWidget;
  Widget? suffix;
  ListWidget(
      {Key? key,
      required this.title,
      this.desc,
      this.suffix,
      required this.prefixWidget})
      : super(key: key);

  // ignore: non_constant_identifier_names
  Widget ColumnWidget() {
    if (desc == null) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextWidget(
            text: title,
            style: FontsStyle.textButtonOnboarding,
          ),
        ],
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidget(
          text: title,
          maxLine: 2,
          style: FontsStyle.textButtonOnboarding,
        ),
        TextWidget(
          text: desc ?? '',
          style: FontsStyle.textRegular,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            prefixWidget,
            const SizedBox(
              width: 10,
            ),
            ColumnWidget()
          ],
        ),
        suffix ?? Container()
      ],
    );

 
  }
}
