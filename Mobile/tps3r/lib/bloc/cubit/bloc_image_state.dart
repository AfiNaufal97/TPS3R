import 'dart:io';

abstract class BlocImageState{}

class InitState extends BlocImageState{

}

class LoadingState extends BlocImageState{
  
}

class ErrorState extends BlocImageState{
  String error;
  ErrorState({required this.error});

}

class SuccessState extends BlocImageState{
  File path;
  SuccessState({required this.path});
}