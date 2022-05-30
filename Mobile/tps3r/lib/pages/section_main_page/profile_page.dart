import 'package:flutter/material.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/utils/routes/route_name.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/list_widget.dart';
import 'package:tps3r/widgets/moleculs/profile_widget.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProfileWidget(
          size: 120,
        ),
        Padding(
          padding: const EdgeInsets.all(SizeResource.padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextWidget(
                text: StringResource.textPengaturan,
                style: FontsStyle.textButtonOnboarding,
              ),
              const SizedBox(
                height: SizeResource.marginS,
              ),
              ListWidget(
                prefixWidget: const Icon(
                  Icons.person,
                  size: SizeResource.iconSize,
                ),
                title: StringResource.textDataPropfile,
                desc: StringResource.textDescDataPropfile,
                suffix: const Icon(
                  Icons.navigate_next_outlined,
                  size: SizeResource.iconSize,
                ),
              ),
              const SizedBox(
                height: SizeResource.marginS,
              ),
              ListWidget(
                prefixWidget: const Icon(
                  Icons.wallet_membership_rounded,
                  size: SizeResource.iconSize,
                ),
                title: StringResource.textDataPembayaran,
                desc: StringResource.textDescDataPembayaran,
                suffix: const Icon(
                  Icons.navigate_next_outlined,
                  size: SizeResource.iconSize,
                ),
              ),
              const SizedBox(
                height: SizeResource.marginM,
              ),
              TextWidget(
                text: StringResource.textBantuan,
                style: FontsStyle.textButtonOnboarding,
              ),
              const SizedBox(
                height: SizeResource.marginS,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RoutesName.faqPage);
                },
                child: ListWidget(
                  prefixWidget: const Icon(
                    Icons.help_outline,
                    size: SizeResource.iconSize,
                  ),
                  title: StringResource.textFaq,
                ),
              ),
              const SizedBox(
                height: SizeResource.marginS,
              ),
              ListWidget(
                prefixWidget: const Icon(
                  Icons.email,
                  size: SizeResource.iconSize,
                ),
                title: StringResource.textContactUs,
              ),
              const SizedBox(
                height: SizeResource.marginS,
              ),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, RoutesName.resultPage);
                },
                child: ListWidget(
                  prefixWidget: const Icon(
                    Icons.star,
                    size: SizeResource.iconSize,
                  ),
                  title: StringResource.textGiveRate,
                ),
              ),
              const SizedBox(height: 50,),
              Center(
                child: TextButton(
                    onPressed: () {},
                    child: TextWidget(
                      text: StringResource.textLogout,
                      style: FontsStyle.textButtonOnboarding
                          .copyWith(color: MyColors.red),
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
