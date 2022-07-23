import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/cubit/bloc_auth_state.dart';
import 'package:tps3r/model/user_model.dart';
import 'package:tps3r/services/firebase/auth_service.dart';
import 'package:tps3r/services/permission_service.dart';

import '../services/firebase/cloud_service.dart';

class BlocAuth extends Cubit<BlocAuthState> {
  BlocAuth() : super(AuthInit());

  void createUser(String nama, String email, String noHp, String alamat,
      String password) async {
    try {
      emit(AuthLoading());
      UserCredential auth = await AuthService().createUserEmailPassword(email, password);
      var geo = await PermissionService().determinePosition();
      UserModel userModel = UserModel(
          id: auth.user!.uid,
          alamat: alamat,
          email: email,
          lat: geo.latitude.toString(),
          long: geo.longitude.toString(),
          nama: nama,
          noHp: noHp);
      var user = await CloudService().userData(userModel);
      emit(AuthSuccess(user: userModel));
    } catch (e) {
      emit(AuthError(error: e.toString()));
    }
  }



}
