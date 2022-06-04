import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:rimotechtest/modules/map_module/map_module_controller.dart';

class MapMpdulePage extends GetView<MapModuleController> {

  final LatLng _center = const LatLng(45.521563, -122.677433);
  late GoogleMapController mapController;
  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 11.0

        ),
      ),
    );
  }
}
