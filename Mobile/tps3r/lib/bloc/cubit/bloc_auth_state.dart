import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tps3r/model/user_model.dart';

abstract class BlocAuthState extends Equatable{}

class AuthInit extends BlocAuthState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class AuthLoading extends BlocAuthState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class AuthError extends BlocAuthState{
  String error;
  AuthError({required this.error});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class AuthSuccess extends BlocAuthState{
  UserModel user;
  AuthSuccess({required this.user});
  @override
  // TODO: implement props
  List<Object?> get props => [user];
}