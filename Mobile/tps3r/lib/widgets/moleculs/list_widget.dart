import 'package:flutter/material.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';

// ignore: must_be_immutable
class ListWidget extends StatelessWidget {
  String title;
  String? desc;
  void Function() function;
  Widget? prefixWidget;
  Widget? suffix;
  TextStyle? style;
  ListWidget(
      {Key? key,
      required this.title,
      this.desc,
      required this.function,
      this.suffix,
      this.style,
      this.prefixWidget})
      : super(key: key);

  // ignore: non_constant_identifier_names
  Widget ColumnWidget() {
    if (desc == null) {
      return Expanded(
        child: TextWidget(
          text: title,
          style: style ??FontsStyle.textButtonOnboarding,
        ),
      );
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextWidget(
          text: title,
          maxLine: 2,
          style: style ?? FontsStyle.textButtonOnboarding,
        ),
        TextWidget(
          text: desc ?? '',
          style:style ?? FontsStyle.textRegular,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                prefixWidget ?? Container(),
                const SizedBox(
                  width: 10,
                ),
                ColumnWidget()
              ],
            ),
          ),
          suffix ?? Container()
        ],
      ),
    );
  }
}
