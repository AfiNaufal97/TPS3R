import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/bloc_image.dart';
import 'package:tps3r/bloc/cubit/bloc_image_state.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/icon_text_widget.dart';
import 'package:tps3r/widgets/moleculs/take_image_widget.dart';

class InformationWastePage extends StatelessWidget {
  const InformationWastePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: SizeResource.marginM),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  BlocBuilder<BlocImage, BlocImageState>(
                    builder: (context, state) {
                      if (state is SuccessState) {
                        return Image.file(
                          state.path,
                          width: 200,
                        );
                      }
                      return Image.asset(
                        'assets/assets/image/icon.png',
                        width: 200,
                      );
                    },
                  ),
                  TextWidget(
                    text: StringResource.textTakeImage,
                    style: FontsStyle.textTitleOnboarding
                        .copyWith(fontSize: SizeResource.sizeTextLage),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TakeImageWidget(
                        camera: true,
                        widget: Container(
                            padding:
                                const EdgeInsets.all(SizeResource.paddingS),
                            decoration: BoxDecoration(
                                border: Border.all(color: MyColors.black),
                                borderRadius: BorderRadius.circular(20)),
                            child: IconTextWidget(
                              widget: const Icon(
                                Icons.camera_alt,
                                size: SizeResource.iconSize,
                              ),
                              text: StringResource.textCamera,
                              style: FontsStyle.textTitleOnboarding,
                            )),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      TakeImageWidget(
                        camera: false,
                        widget: Container(
                            padding:
                                const EdgeInsets.all(SizeResource.paddingS),
                            decoration: BoxDecoration(
                                border: Border.all(color: MyColors.black),
                                borderRadius: BorderRadius.circular(20)),
                            child: IconTextWidget(
                              widget: const Icon(
                                Icons.photo_album,
                                size: SizeResource.iconSize,
                              ),
                              text: StringResource.textGallery,
                              style: FontsStyle.textTitleOnboarding,
                            )),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
