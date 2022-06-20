import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_assets.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/header_widget.dart';
import 'package:tps3r/widgets/moleculs/list_widget.dart';

class TrackingPage extends StatelessWidget {
  const TrackingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          HeaderWidget(
            function: () {},
            text: StringResource.textTracking,
            colorText: MyColors.green,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(SizeResource.padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  TextWidget(
                    text: StringResource.textStatusSampah,
                    style: FontsStyle.textSectionMenu,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListWidget(
                    function: () {},
                    title: StringResource.textSttusPetugas1,
                    prefixWidget: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(StringAssets.imgTruck),
                    ),
                    suffix: TextWidget(text: StringResource.textDate),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeResource.padding),
                    child: Container(
                      height: 50,
                      width: 5,
                      decoration: const BoxDecoration(color: MyColors.main),
                    ),
                  ),
                  ListWidget(
                    function: () {},
                    title: StringResource.textSttusPetugas2,
                    prefixWidget: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(StringAssets.imgWaste),
                    ),
                    suffix: TextWidget(text: StringResource.textDate),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeResource.padding),
                    child: Container(
                      height: 50,
                      width: 5,
                      decoration: const BoxDecoration(color: MyColors.main),
                    ),
                  ),
                  ListWidget(
                    function: () {},
                    title: StringResource.textSttusPetugas3,
                    prefixWidget: const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(StringAssets.imgTake),
                    ),
                    suffix: TextWidget(text: StringResource.textDate),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
