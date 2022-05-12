import 'package:flutter_bloc/flutter_bloc.dart';

class BlocBool extends Cubit<bool> {
  BlocBool() : super(false);
  bool value = false;

  void setNewValueBool(){
    value = !value;
  }

}
