import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_assets.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/routes/route_name.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/header_widget.dart';
import 'package:tps3r/widgets/moleculs/list_widget.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
    
      children: [
        HeaderWidget(
          function: () {},
          colorText: MyColors.green,
          text: StringResource.textIconNotification,
        ),
        Padding(
          padding: const EdgeInsets.all(SizeResource.padding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.trackingPage);
                },
                child: ListWidget(
                  title: StringResource.textBapeling,
                  prefixWidget: const CircleAvatar(
                    radius: 20,
                    backgroundColor: MyColors.green,
                    backgroundImage: AssetImage(StringAssets.imgLogoWhite),
                  ),
                  desc: StringResource.textSelamatDatangBapeling,
                  suffix: TextWidget(text: StringResource.textDate),
                ),
              ),
              const SizedBox(
                height: SizeResource.marginM,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, RoutesName.trackingPage);
                },
                child: ListWidget(
                  title: StringResource.textBapeling,
                  prefixWidget: const CircleAvatar(
                    radius: 20,
                    backgroundColor: MyColors.green,
                    backgroundImage: AssetImage(StringAssets.imgLogoWhite),
                  ),
                  desc: StringResource.textSelamatDatangBapeling,
                  suffix: TextWidget(text: StringResource.textDate),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
