import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tflite/tflite.dart';

import 'cubit/bloc_image_prediction_state.dart';

class BlocImagePrediction extends Cubit<BlocImagePredictionState> {
  BlocImagePrediction() : super(InitState());

  void setImage(File file) async {
    try {
      emit(LoadingState());
      await Tflite.loadModel(
          model: 'assets/assets/model/model_unquant.tflite',
          labels: 'assets/assets/model/labels.txt');
      var result = await Tflite.runModelOnImage(
          path: file.path,
          numResults: 2,
          threshold: 0.6,
          imageMean: 127.5,
          imageStd: 127.5);
      emit(SuccessState(prediction: result!));
    } catch (e) {
      emit(ErrorState(error: e.toString()));
    }
  }
}
