import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tps3r/services/permission_service.dart';

class MapsService{
  String key = '';
  
  Future<LatLng> getLocation()async{
    var location = await PermissionService().determinePosition(); 
    var lat = location.latitude;
    var long = location.longitude;
    print('$lat, $long');
    return LatLng(lat, long);
  }

  void getHttp()async{

  }
}