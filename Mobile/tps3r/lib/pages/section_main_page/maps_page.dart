// ignore_for_file: non_constant_identifier_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tps3r/resources/size_resource.dart';
import 'package:tps3r/utils/colors/colors_style.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  Completer<GoogleMapController> _controller = Completer();

  static const CameraPosition _start = CameraPosition(
    target: LatLng(-8.650000, 115.216667),
    zoom: 14.4746,
  );

  static const CameraPosition _baliNesia = CameraPosition(
    target: LatLng(-8.650000, 115.216667),
    zoom: 14.4746,
  );

  Future<void> gotoBali() async {
    final GoogleMapController controller = await _controller.future;

    controller.animateCamera(CameraUpdate.newCameraPosition(_baliNesia));
  }

  List<Marker> marker = const [
    Marker(
      markerId:  MarkerId('TPS3R KUBU LESTARI PEMOGAN'),
      position:  LatLng(
          -8.70166310298545, 115.19378538501984), //position of marker
      infoWindow:  InfoWindow(
        //popup info
        title: 'TPS3R KUBU LESTARI PEMOGAN ',
        snippet: 'Start Marker',
    )),
    Marker(
//       //add start location marker
      markerId:  MarkerId('TPS3R KSM SEKAR TANJUNG '),
      position:  LatLng(
          -8.703316298491089, 115.24583211200786), //position of marker
      infoWindow:  InfoWindow(
        //popup info
        title: 'TPS3R KSM SEKAR TANJUNG ',
        snippet: 'Start Marker',
      ),
    
    ),

   Marker(
      //add start location marker
      markerId:  MarkerId('TPS3R PEMECUTAN KELOD'),
      position:  LatLng(
          -8.670883250973066, 115.19467899851365), //position of marker
      infoWindow:  InfoWindow(
        //popup info
        title: 'TPS3R PEMECUTAN KELOD ',
        snippet: 'Start Marker',
      ),
   
    ),

    Marker(
      //add start location marker
      markerId:  MarkerId('TPS3R UMA SARI UBUNG KAJA'),
      position:  LatLng(
          -8.625799366659892, 115.19323319666593), //position of marker
      infoWindow:  InfoWindow(
        //popup info
        title: 'TPS3R UMA SARI UBUNG KAJA ',
        snippet: 'Start Marker',
      ),
   
    ),

  Marker(
      //add start location marker
      markerId:  MarkerId('TPS3R PULAU KAWE'),
      position:  LatLng(
          -8.680560480982672, 115.20722663899569), //position of marker
      infoWindow:  InfoWindow(
        //popup info
        title: 'TPS3R PULAU KAWE ',
        snippet: 'Start Marker',
      ),
   
    ),
Marker(
      //add start location marker
      markerId:  MarkerId('TPST 3R SEMINYAK BALI'),
      position:  LatLng(
          -8.693182332373835, 115.17932085433705), //position of marker
      infoWindow:  InfoWindow(
        //popup info
        title: 'TPST 3R SEMINYAK BALI',
        snippet: 'Start Marker',
      ),

    ),

    Marker(
      //add start location marker
      markerId:  MarkerId('TPS3R CEMARA DAJAN PEKEN'),
      position:  LatLng(
          -8.521862306499076, 115.123151225304), //position of marker
      infoWindow:  InfoWindow(
        //popup info
        title: 'TPS3R CEMARA DAJAN PEKEN',
        snippet: 'Start Marker',
      ),
  
    ),

Marker(
      //add start location marker
      markerId:  MarkerId('TPS3R PENARUNGAN'),
      position:  LatLng(
          -8.527294783985537, 115.19627896690552), //position of marker
      infoWindow:  InfoWindow(
        //popup info
        title: 'TPS3R PENARUNGAN',
        snippet: 'Start Marker',
      ),

    ),

 Marker(
      //add start location marker
      markerId:  MarkerId('TPS3R KESIMAN'),
      position:  LatLng(
          -8.654754292258641, 115.24534810593295), //position of marker
      infoWindow:  InfoWindow(
        //popup info
        title: 'TPS3R KESIMAN',
        snippet: 'Start Marker',
      ),

    ),

    Marker(
      //add start location marker
      markerId:  MarkerId('TPS3R SARI SEDANA'),
      position:  LatLng(
          -8.635746665500161, 115.19934285840598), //position of marker
      infoWindow:  InfoWindow(
        //popup info
        title: 'TPS3R SARI SEDANA',
        snippet: 'Start Marker',
      ),

    )
    
   
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
          alignment: Alignment.topRight,
          children: [
      GoogleMap(

        initialCameraPosition: _start,
        markers: marker.toSet(),
        onMapCreated: (GoogleMapController controller) {
          _controller.complete(controller);
        },
      ),
      Positioned(
        top: SizeResource.marginM,
        right: SizeResource.marginM,
        child: FloatingActionButton(
          mini: true,
          backgroundColor: MyColors.white.withOpacity(0.7),
          onPressed: () {
            gotoBali();
          },
          child: const Icon(Icons.my_location_rounded, color: MyColors.black,),
        ),
      )
    ]));
  }
}
