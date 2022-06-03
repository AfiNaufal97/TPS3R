import 'dart:io';

abstract class BlocImagePredictionState {}

class InitState extends BlocImagePredictionState {}

class LoadingState extends BlocImagePredictionState {}

class ErrorState extends BlocImagePredictionState {
  String error;
  ErrorState({required this.error});
}

class SuccessState extends BlocImagePredictionState {
  List<dynamic> prediction;
  SuccessState({required this.prediction});
}
