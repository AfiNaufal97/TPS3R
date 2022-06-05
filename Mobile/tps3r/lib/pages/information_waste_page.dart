import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/bloc_add_image.dart';
import 'package:tps3r/bloc/bloc_image_prediction.dart';
import 'package:tps3r/bloc/cubit/bloc_add_photo_state.dart';
import 'package:tps3r/pages/result_waste_page.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/utils/routes/route_name.dart';
import 'package:tps3r/widgets/atom/button_widget.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/header_widget.dart';
import 'package:tps3r/widgets/moleculs/icon_text_widget.dart';
import 'package:tps3r/widgets/moleculs/take_image_widget.dart';

import '../bloc/cubit/bloc_image_prediction_state.dart';

class InformationWastePage extends StatelessWidget {
  const InformationWastePage({Key? key}) : super(key: key);

  // Note: detection waste
  // ignore: non_constant_identifier_names
  Widget WasteDetection(File file) {
    return BlocConsumer<BlocImagePrediction, BlocImagePredictionState>(
        builder: (context, state) {
      if (state is StateLoading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      return ButtonWidget(
        width: MediaQuery.of(context).size.width - 40,
        textButton: StringResource.textDetectionWaste,
        function: () {
          context.read<BlocImagePrediction>().setImage(file);
        },
        color: MyColors.green,
      );
    }, listener: (context, state) {
      if (state is ErrorState) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: TextWidget(
          text: state.error,
        )));
      }
      if (state is SuccessState) {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ResultWastePage(
                      output: state.prediction,
                    )));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              children: [
                HeaderWidget(
                  function: () => Navigator.pushNamedAndRemoveUntil(
                      context, RoutesName.mainPage, (route) => false),
                  text: StringResource.textDetectionWaste,
                  colorBackground: MyColors.white,
                  colorText: MyColors.green,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    BlocBuilder<BlocAddImage, BlocAddPhotoState>(
                      builder: (context, state) {
                        if (state is StateSuccess) {
                          return Image.file(
                            state.image,
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
                    ),
                    const SizedBox(
                      height: SizeResource.marginM,
                    ),
                    BlocBuilder<BlocAddImage, BlocAddPhotoState>(
                      builder: (context, state) {
                        if (state is StateSuccess) {
                          // ignore: unused_local_variable
                          return WasteDetection(state.image);
                        }
                        return Container();
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
