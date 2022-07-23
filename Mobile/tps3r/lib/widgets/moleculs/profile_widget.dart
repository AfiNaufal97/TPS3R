import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/bloc_detail_user.dart';
import 'package:tps3r/bloc/cubit/bloc__detail_user_state.dart';

import '../../resources/size_resource.dart';
import '../../resources/string_assets.dart';
import '../../utils/colors/colors_style.dart';
import '../../utils/fonts/fonts_style.dart';
import '../atom/text_widget.dart';

// ignore: must_be_immutable
class ProfileWidget extends StatelessWidget {
  double? size;
  bool home;
  ProfileWidget({Key? key, this.size, required this.home}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size ?? 150,
      padding: const EdgeInsets.only(top: SizeResource.padding),
      decoration: const BoxDecoration(
          color: MyColors.main,
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(SizeResource.radiusBig),
              bottomRight: Radius.circular(SizeResource.radiusBig))),
      child: Padding(
        padding: const EdgeInsets.all(SizeResource.padding),
        child: Row(
          children: [
            const Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                  radius: SizeResource.radiusImage,
                  backgroundImage: AssetImage(StringAssets.imgProfile)),
            ),
            const SizedBox(
              width: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
             BlocBuilder<BlocDetailUser, BlocDetailUserState>(
               builder: (context, state) {
                if(state is BlocDetailUserStateSuccess){
                  return TextWidget(
                    text: home ? 'Hello , ${state.userModel.nama}' : state.userModel.nama,
                    style: FontsStyle.textMedium.copyWith(color: MyColors.green),
                  );
                }
                return TextWidget(
                  text: 'Your Name',
                  style: FontsStyle.textMedium.copyWith(color: MyColors.green),
                );
               },

             )

                  ,
                BlocBuilder<BlocDetailUser, BlocDetailUserState>(
                  builder: (context, state) {
                    if(state is BlocDetailUserStateSuccess){
                      return TextWidget(
                        text: home ? 'Selamat Datang di Bapeling' : state.userModel.email,
                        style: FontsStyle.textSmallBold.copyWith(
                            fontSize: 12,
                            color: MyColors.green),
                      );
                    }
                    return TextWidget(
                      text: 'Selamat Datang di Bapeling',
                      style: FontsStyle.textSmallBold.copyWith(
                          fontSize: 12,
                          color: MyColors.green),
                    );
                  },

                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
