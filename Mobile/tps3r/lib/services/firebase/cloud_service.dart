import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tps3r/model/user_model.dart';

class CloudService {
  var users = FirebaseFirestore.instance.collection('users');

  Future<void> userData(UserModel userModel) async {
      await users.doc(userModel.id).set({
      'id': userModel.id,
      'email':userModel.email,
      'alamat': userModel.alamat,
      'noHp': userModel.noHp,
      'nama': userModel.nama,
      'lat': userModel.lat,
      'long': userModel.long,
    });
  }


  Future<UserModel> getById(String id)async{
    var fireStore = FirebaseFirestore.instance.collection('users');
    DocumentSnapshot model = await fireStore.doc(id).get();
    UserModel userModel = UserModel(id: model['id'], alamat: model['alamat'], email: model['email'], lat: model['lat'], long: model['long'], nama: model['nama'], noHp: model['nohp']);
    return userModel;
  }
}
