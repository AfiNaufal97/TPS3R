import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';

import 'cubit/bloc_add_photo_state.dart';

class BlocAddImage extends Cubit<BlocAddPhotoState>{
  BlocAddImage() : super(StateInit());

  void addPhoto(XFile? photo){
  try {
    emit(StateLoading());
    var image = File(photo!.path);
    emit(StateSuccess(image: image));
  } catch (e) {
    emit(StateError(error: e.toString()));
  }
  }


}