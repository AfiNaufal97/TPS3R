import 'package:dio/dio.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tps3r/services/permission_service.dart';

class MapsService {
  String key = '';

  Future<LatLng> getLocation() async {
    var location = await PermissionService().determinePosition();
    var lat = location.latitude;
    var long = location.longitude;
    print('$lat, $long');
    return LatLng(lat, long);
  }

  void getPlaceId({required String input}) async {
    String key = 'AIzaSyA1MgLuZuyqR_OGY3ob3M52N46TDBRI_9k';
    String url =
        'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=$key';
    try {
      var response = await Dio().get(url);
      print(response);
    } catch (e) {
      print(e);
    }
  }

  
}
