import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/services/firebase/cloud_service.dart';

import 'cubit/bloc__detail_user_state.dart';

class BlocDetailUser extends Cubit<BlocDetailUserState>{
  BlocDetailUser() : super(BlocDetailUserStateInit());

  void getDetailUser(String id)async{
    print('runing');
    try{
      emit(BlocDetailUserStateLoading());
      var user = await CloudService().getById(id);
      print('proses');
      print(user.nama);
      emit(BlocDetailUserStateSuccess(userModel: user));
    }catch(e){
      emit(BlocDetailUserStateError(error: e.toString()));
    }
  }

}