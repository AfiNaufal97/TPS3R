import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/bloc_add_image.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';
import 'package:tps3r/utils/data/get_data_informtaion.dart';
import 'package:tps3r/utils/fonts/fonts_style.dart';
import 'package:tps3r/widgets/atom/text_widget.dart';
import 'package:tps3r/widgets/moleculs/header_widget.dart';

import '../bloc/cubit/bloc_add_photo_state.dart';

// ignore: must_be_immutable
class ResultWastePage extends StatelessWidget {
  List<dynamic> output;
  ResultWastePage({Key? key, required this.output}) : super(key: key);

  //Note : Information Waste
  // ignore: non_constant_identifier_names
  Widget WasteInformation({required String data}) {
    var information = getDataInformation(data);

    return Container(
      width: double.infinity,
      height: 500,
      margin: const EdgeInsets.all(SizeResource.marginS),
      padding: const EdgeInsets.all(SizeResource.padding),
      decoration: BoxDecoration(
          color: MyColors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          TextWidget(
            text: information.title,
            style: FontsStyle.textTitleOnboarding,
          ),
          TextWidget(
            text: information.desc,
            style: FontsStyle.textRegular,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                   
                HeaderWidget(
                  function: () => Navigator.pop(context),
                  text: StringResource.textWastePrediction,
                  colorText: MyColors.green,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    BlocBuilder<BlocAddImage, BlocAddPhotoState>(
                      builder: (context, state) {
                        if (state is StateSuccess) {
                          return Image.file(
                            state.image,
                            fit: BoxFit.fill,
                          );
                        }
                        return Container();
                      },
                    ),
                    WasteInformation(data: output[0]['label'].toString())
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}




 
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Video Demo',
//       home: Scaffold(
//         body: Center(
//           child: 
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               _controller!.value.isPlaying
//                   ? _controller!.pause()
//                   : _controller!.play();
//             });
//           },
//           child: Icon(
//             _controller!.value.isPlaying ? Icons.pause : Icons.play_arrow,
//           ),
//         ),
//       ),
//     );
//   }


// }