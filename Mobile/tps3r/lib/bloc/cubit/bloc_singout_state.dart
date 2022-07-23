import 'package:equatable/equatable.dart';

abstract class BlocSignoutState extends Equatable {}

class BlocSignoutStateInit extends BlocSignoutState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class BlocSignoutStateLoading extends BlocSignoutState {
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class BlocSignoutStateError extends BlocSignoutState {
  String error;
  BlocSignoutStateError({required this.error});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}

class BlocSignoutStateSuccess extends BlocSignoutState {
  String success;
  BlocSignoutStateSuccess({required this.success});
  @override
  // TODO: implement props
  List<Object?> get props => throw UnimplementedError();
}
