import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/cubit/bloc_image_state.dart';
import 'package:image_picker/image_picker.dart';

class BlocImage extends Cubit<BlocImageState>{
  BlocImage() : super(InitState());

  void setImage(XFile? file)async{
    try{
      emit(LoadingState());
      File data = File(file!.path);
      emit(SuccessState(path: data));

    }catch(e){
      emit(ErrorState(error: e.toString()));
    }
  }

}