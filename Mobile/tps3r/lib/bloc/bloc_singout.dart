import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/cubit/bloc_singin_state.dart';
import 'package:tps3r/bloc/cubit/bloc_singout_state.dart';
import 'package:tps3r/services/firebase/auth_service.dart';

class BlocSingout extends Cubit<BlocSignoutState>{
  BlocSingout() : super(BlocSignoutStateInit());


  void userLogout()async{
    try{
      emit(BlocSignoutStateLoading());
      await AuthService().logoutEmailPassword();
      emit(BlocSignoutStateSuccess(success: 'Suksess'));
    }catch(e){
      emit(BlocSignoutStateError(error: e.toString()));
    }
  }

}