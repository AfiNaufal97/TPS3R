import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tps3r/bloc/cubit/bloc_show_detail_state.dart';
import 'package:tps3r/model/detail_location_model.dart';
import 'package:tps3r/resources/string_assets.dart';
import 'package:tps3r/resources/string_resource.dart';

class BlocShowDetail extends Cubit<BlocShowDetailSstate> {
  BlocShowDetail() : super(StateInit());

  void showDetail({required String nameLoc, required String noTelp}) {
    try {
      emit(StateLoading());
      var data = DetailLocationModel(
          imageLocation: StringAssets.imgTps3r,
          nameLocation: nameLoc,
          noTelepon: noTelp,
          open: StringResource.textValueTimeOpen);
      emit(StateSuccess(model: data));

      print(this.state);
    } catch (e) {
      emit(StateError(error: e.toString()));
    }
  }

  void endShow() {
    print(this.state);
    emit(StateInit());
  }
}
