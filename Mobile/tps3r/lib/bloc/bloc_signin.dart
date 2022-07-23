import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/cubit/bloc_singin_state.dart';
import 'package:tps3r/services/firebase/auth_service.dart';

class BlocSignin extends Cubit<BlocSignInState> {
  BlocSignin() : super(BlocSigninInit());

  void signinPasswordEmail(String email, String password) async {
    try {
      emit(BlocSigninLoading());
      await AuthService().signEmailPassword(email, password);
      emit(BlocSigninSuccess(sukses: 'Sukses'));
    } catch (e) {
      emit(BlocSigninEror(error: e.toString()));
    }
  }
}
