import 'package:firebase_auth/firebase_auth.dart';
import 'package:tps3r/model/petugas.dart';

class Rating{
  String value;
  PetugasModel petugas;
  User user;
  String comment;

  Rating({required this.user, required this.petugas, required this.value, required this.comment});
}