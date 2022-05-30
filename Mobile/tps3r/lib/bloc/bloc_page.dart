import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocPage extends Cubit<int>{
  BlocPage() : super(0);

  void home(){
    emit(0);
  }

  void maps(){
    emit(1);
  }

  void store(){
    emit(2);
  }

  void notif(){
    emit(3);
  }

  void profile(){
    emit(4);
  }
  
}