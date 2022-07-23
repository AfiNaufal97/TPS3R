class PetugasModel {
  String id;
  String nama;
  String email;
  String noHp;
  String alamat;
  double long;
  double lat;

  PetugasModel(
      {required this.id,
      required this.alamat,
      required this.email,
      required this.lat,
      required this.long,
      required this.nama,
      required this.noHp});

  factory PetugasModel.fromJson(String id, Map<String, dynamic> json) {
    return PetugasModel(
        id: id,
        alamat: json['alamat'],
        email: json['email'],
        lat: json['lat'],
        long: json['long'],
        nama: json['nama'],
        noHp: json['noHp']);
  }

  Map<String, dynamic> toMap(PetugasModel petugasModel) {
    return {
      'id': petugasModel.id,
      'alamat': petugasModel.alamat,
      'nohp': petugasModel.noHp,
      'nama': petugasModel.nama,
      'lat': petugasModel.lat,
      'long': petugasModel.long,
    };
  }
}
