

abstract class BlocMapsState{}

class StateInit extends BlocMapsState{

}
class StateLoading extends BlocMapsState{}
class StateSuccess extends BlocMapsState{

}

class StateError extends BlocMapsState{
  String error;
  StateError({required this.error});
}