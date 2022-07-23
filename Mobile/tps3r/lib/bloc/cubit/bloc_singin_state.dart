import 'package:equatable/equatable.dart';

abstract class BlocSignInState extends Equatable{

}

class BlocSigninInit extends BlocSignInState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}

class BlocSigninLoading extends BlocSignInState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}

class BlocSigninEror extends BlocSignInState{
  String error;
  BlocSigninEror({required this.error});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}

class BlocSigninSuccess extends BlocSignInState{
  String sukses;
  BlocSigninSuccess({required this.sukses});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}