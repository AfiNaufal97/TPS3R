class UserModel {
  String id;
  String nama;
  String email;
  String noHp;
  String alamat;
  String long;
  String lat;

  UserModel(
      {required this.id,
      required this.alamat,
      required this.email,
      required this.lat,
      required this.long,
      required this.nama,
      required this.noHp});

  factory UserModel.fromJson(String id, Map<String, dynamic> json) {
    return UserModel(
        id: id,
        alamat: json['alamat'],
        email: json['email'],
        lat: json['lat'],
        long: json['long'],
        nama: json['nama'],
        noHp: json['noHp']);
  }

  Map<String, dynamic> toMap(UserModel userModel) {
    return {
      'id': userModel.id,
      'email':userModel.email,
      'alamat': userModel.alamat,
      'noHp': userModel.noHp,
      'nama': userModel.nama,
      'lat': userModel.lat,
      'long': userModel.long,
    };
  }
}
