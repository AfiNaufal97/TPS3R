import 'dart:io';

abstract class BlocAddPhotoState {}

class StateInit extends BlocAddPhotoState {}

class StateLoading extends BlocAddPhotoState {}

class StateError extends BlocAddPhotoState {
  String error;
  StateError({required this.error});
}

class StateSuccess extends BlocAddPhotoState {
  File image;
  StateSuccess({required this.image});
}
