import 'package:equatable/equatable.dart';
import 'package:tps3r/model/user_model.dart';

abstract class BlocDetailUserState extends Equatable{

}

class BlocDetailUserStateInit extends BlocDetailUserState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}


class BlocDetailUserStateLoading extends BlocDetailUserState{
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}


class BlocDetailUserStateError extends BlocDetailUserState{
  String error;
  BlocDetailUserStateError({required this.error});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}


class BlocDetailUserStateSuccess extends BlocDetailUserState{
  UserModel userModel;
  BlocDetailUserStateSuccess({required this.userModel});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();

}