// ignore_for_file: non_constant_identifier_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:tps3r/services/geolocation_service.dart';
import 'package:tps3r/utils/colors/colors_style.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  Set<Marker> _markers = {};

  final Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(-8.739184, 115.171127),
    zoom: 14.4746,
  );

  static const CameraPosition _kLake = CameraPosition(
      bearing: 192.8334901395799,
      target: LatLng(37.43296265331129, -122.08832357078792),
      tilt: 59.440717697143555,
      zoom: 19.151926040649414);

  Future<void> _position() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }

  void getLocation() async {
    var latitute = await GeolocationService().determinePosition();
    setState(() {
      _markers.add(Marker(
          markerId: MarkerId('Now'),
          position: LatLng(latitute.latitude, latitute.longitude)));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          GoogleMap(
            mapType: MapType.normal,
            markers: _markers,
            zoomControlsEnabled: true,
            zoomGesturesEnabled: true,
            minMaxZoomPreference: MinMaxZoomPreference.unbounded,
            initialCameraPosition: _kGooglePlex,
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Positioned(
            top: 30,
            right: 10,
            child: FloatingActionButton(
              mini: true,
              backgroundColor: MyColors.white,
              onPressed: () {
                getLocation();
              },
              child: Icon(
                Icons.my_location_rounded,
                color: MyColors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
