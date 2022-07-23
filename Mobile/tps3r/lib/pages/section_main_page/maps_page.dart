// ignore_for_file: non_constant_identifier_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tps3r/bloc/bloc_show_detail.dart';
import 'package:tps3r/bloc/cubit/bloc_show_detail_state.dart';
import 'package:tps3r/resources/string_resource.dart';
import 'package:tps3r/services/maps_service.dart';
import 'package:tps3r/widgets/atom/edit_text_widget.dart';
import 'package:tps3r/widgets/moleculs/detail_location_widget.dart';

import '../../resources/size_resource.dart';
import '../../utils/colors/colors_style.dart';

class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  final Completer<GoogleMapController> _controller = Completer();
  TextEditingController controllerEdt = TextEditingController(text: '');
  double lat = -8.650000;
  double long = 115.216667;

  static const CameraPosition _start = CameraPosition(
    target: LatLng(-8.650000, 115.216667),
    zoom: 14.4746,
  );

  // ignore: unused_field
  static const CameraPosition _baliNesia = CameraPosition(
    target: LatLng(-8.650000, 115.216667),
    zoom: 14.4746,
  );

  Future<void> gotoBali() async {
    final GoogleMapController controller = await _controller.future;
    LatLng latLng = await MapsService().getLocation();
    setState(() {
      lat = latLng.latitude;
      long = latLng.longitude;
    });
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(zoom: 14.0, target: latLng)));
  }

  List<Marker> markerList() {
    return [
      Marker(
          markerId: const MarkerId(StringResource.tps3rKubuLestariPamongan),
          position: const LatLng(
              -8.70166310298545, 115.19378538501984), //position of marker
          infoWindow: InfoWindow(
              //popup info
              title: StringResource.tps3rKubuLestariPamongan,
              snippet: 'Start Marker',
              onTap: () {
                context.read<BlocShowDetail>().showDetail(
                    nameLoc: StringResource.tps3rKubuLestariPamongan,
                    noTelp: StringResource.textNoTelp);
              })),
      Marker(
        markerId: const MarkerId(StringResource.tps3rSekarTanjung),
        position: const LatLng(
            -8.703316298491089, 115.24583211200786), //position of marker
        infoWindow: InfoWindow(
            //popup info
            title: StringResource.tps3rSekarTanjung,
            snippet: 'Start Marker',
            onTap: () {
              context.read<BlocShowDetail>().showDetail(
                  nameLoc: StringResource.tps3rKubuLestariPamongan,
                  noTelp: StringResource.textNoTelp);
            }),
      ),
      Marker(
        //add start location marker
        markerId: const MarkerId('TPS3R PEMECUTAN KELOD'),
        position: const LatLng(
            -8.670883250973066, 115.19467899851365), //position of marker
        infoWindow: InfoWindow(
            //popup info
            title: 'TPS3R PEMECUTAN KELOD ',
            snippet: 'Start Marker',
            onTap: () {
              context.read<BlocShowDetail>().showDetail(
                  nameLoc: StringResource.tps3rKubuLestariPamongan,
                  noTelp: StringResource.textNoTelp);
            }),
      ),
      Marker(
        //add start location marker
        markerId: const MarkerId('TPS3R UMA SARI UBUNG KAJA'),
        position: const LatLng(
            -8.625799366659892, 115.19323319666593), //position of marker
        infoWindow: InfoWindow(
            //popup info
            title: 'TPS3R UMA SARI UBUNG KAJA ',
            snippet: 'Start Marker',
            onTap: () {
              context.read<BlocShowDetail>().showDetail(
                  nameLoc: StringResource.tps3rKubuLestariPamongan,
                  noTelp: StringResource.textNoTelp);
            }),
      ),
      Marker(
        //add start location marker
        markerId: const MarkerId('TPS3R PULAU KAWE'),
        position: const LatLng(
            -8.680560480982672, 115.20722663899569), //position of marker
        infoWindow: InfoWindow(
            //popup info
            title: 'TPS3R PULAU KAWE ',
            snippet: 'Start Marker',
            onTap: () {
              context.read<BlocShowDetail>().showDetail(
                  nameLoc: StringResource.tps3rKubuLestariPamongan,
                  noTelp: StringResource.textNoTelp);
            }),
      ),
      Marker(
        //add start location marker
        markerId: const MarkerId('TPST 3R SEMINYAK BALI'),
        position: const LatLng(
            -8.693182332373835, 115.17932085433705), //position of marker
        infoWindow: InfoWindow(
            //popup info
            title: 'TPST 3R SEMINYAK BALI',
            snippet: 'Start Marker',
            onTap: () {
              context.read<BlocShowDetail>().showDetail(
                  nameLoc: StringResource.tps3rKubuLestariPamongan,
                  noTelp: StringResource.textNoTelp);
            }),
      ),
      Marker(
        //add start location marker
        markerId: const MarkerId('TPS3R CEMARA DAJAN PEKEN'),
        position: const LatLng(
            -8.521862306499076, 115.123151225304), //position of marker
        infoWindow: InfoWindow(
            //popup info
            title: 'TPS3R CEMARA DAJAN PEKEN',
            snippet: 'Start Marker',
            onTap: () {
              context.read<BlocShowDetail>().showDetail(
                  nameLoc: StringResource.tps3rKubuLestariPamongan,
                  noTelp: StringResource.textNoTelp);
            }),
      ),
      Marker(
        //add start location marker
        markerId: const MarkerId('TPS3R PENARUNGAN'),
        position: const LatLng(
            -8.527294783985537, 115.19627896690552), //position of marker
        infoWindow: InfoWindow(
            //popup info
            title: 'TPS3R PENARUNGAN',
            snippet: 'Start Marker',
            onTap: () {
              context.read<BlocShowDetail>().showDetail(
                  nameLoc: StringResource.tps3rKubuLestariPamongan,
                  noTelp: StringResource.textNoTelp);
            }),
      ),
      Marker(
        //add start location marker
        markerId: const MarkerId('TPS3R KESIMAN'),
        position: const LatLng(
            -8.654754292258641, 115.24534810593295), //position of marker
        infoWindow: InfoWindow(
            //popup info
            title: 'TPS3R KESIMAN',
            snippet: 'Start Marker',
            onTap: () {
              context.read<BlocShowDetail>().showDetail(
                  nameLoc: StringResource.tps3rKubuLestariPamongan,
                  noTelp: StringResource.textNoTelp);
            }),
      ),
      Marker(
        //add start location marker
        markerId: const MarkerId('TPS3R SARI SEDANA'),
        position: const LatLng(
            -8.635746665500161, 115.19934285840598), //position of marker
        infoWindow: InfoWindow(
            //popup info
            title: 'TPS3R SARI SEDANA',
            snippet: 'Start Marker',
            onTap: () {
              context.read<BlocShowDetail>().showDetail(
                  nameLoc: StringResource.tps3rKubuLestariPamongan,
                  noTelp: StringResource.textNoTelp);
            }),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
        child: Stack(alignment: Alignment.center, children: [
      GestureDetector(
        onTap: () {
          context.read<BlocShowDetail>().endShow();
        },
        child: GoogleMap(
          myLocationEnabled: true,
          trafficEnabled: true,
          zoomControlsEnabled: false,
          myLocationButtonEnabled: false,
          initialCameraPosition: _start,
          markers: markerList().toSet(),
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ),
      ),
      Positioned(
        top: SizeResource.marginM,
        right: SizeResource.marginS,
        child: FloatingActionButton(
          mini: true,
          backgroundColor: MyColors.white.withOpacity(0.7),
          onPressed: () async {
            await gotoBali();
          },
          child: const Icon(
            Icons.my_location_rounded,
            color: MyColors.black,
          ),
        ),
      ),
      BlocBuilder<BlocShowDetail, BlocShowDetailSstate>(
        builder: (context, state) {
          if (state is StateInit) {
            return Container();
          }
          return  Positioned(bottom: 10, child: DetailLocationWidget(context));
        },
      ),

    ]));
  }
}
