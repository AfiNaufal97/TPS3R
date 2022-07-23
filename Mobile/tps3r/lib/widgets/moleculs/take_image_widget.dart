import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:tps3r/bloc/bloc_add_image.dart';

// ignore: must_be_immutable
class TakeImageWidget extends StatelessWidget {
  bool camera;
  Widget widget;
  ImagePicker picker = ImagePicker();

  TakeImageWidget({Key? key, required this.camera, required this.widget})
      : super(key: key);

  void getImage(BuildContext context) async {
    if (camera) {
      var data = await picker.pickImage(source: ImageSource.camera , maxWidth: 224, maxHeight: 224);
      context.read<BlocAddImage>().addPhoto(data);
    } else {
      var data = await picker.pickImage(source: ImageSource.gallery, maxHeight: 224, maxWidth: 224);
      context.read<BlocAddImage>().addPhoto(data);
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: widget,
      onTap: () {
        getImage(context);
      },
    );
  }
}
