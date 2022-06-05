import '../../model/detail_location_model.dart';

abstract class BlocShowDetailSstate{}

class StateInit extends BlocShowDetailSstate{}
class StateLoading extends BlocShowDetailSstate{}
class StateSuccess extends BlocShowDetailSstate{
  DetailLocationModel model;
  StateSuccess({required this.model});
}
class StateError extends BlocShowDetailSstate{
  String error;
  StateError({required this.error});
}