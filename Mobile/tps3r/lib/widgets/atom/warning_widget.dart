import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/button_widget.dart';

// ignore: must_be_immutable
class WarningWidget extends StatelessWidget {
  String text;
  WarningWidget({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(SizeResource.padding),
          width: MediaQuery.of(context).size.width - 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(SizeResource.radius),
              color: MyColors.main.withOpacity(0.3)),
          child: Row(
            children: [
              const Icon(
                Icons.warning,
                size: SizeResource.iconSizeM,
              ),
              const SizedBox(
                width: 5,
              ),
              Expanded(
                child: Text(
                  text,
                  style: FontsStyle.textRegular.copyWith(color: MyColors.green),
                ),
              ),
            ],
          ),
        ),
       Positioned(
        right:SizeResource.right5,
        top: SizeResource.top5,
         child: GestureDetector(
          onTap: (){},
           child: const CircleAvatar(
            backgroundColor: MyColors.green,
            radius: SizeResource.heightL,
            child: Text(StringResource.textClose),
           ),
         ),
       )
      ],
    );
  }
}
