import 'dart:async';

import 'package:google_map_flutter/pages/map_screen/map_screen.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapViewModel{
  MapScreenState state;
  Completer<GoogleMapController> mapController = Completer();
  final CameraPosition kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );
  MapViewModel(MapScreenState state){
    this.state = state;
  }


}