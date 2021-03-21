import 'package:flutter/material.dart';
import 'package:google_map_flutter/pages/map_screen/map_view_model.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  MapScreenState createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  MapViewModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.black,
            child: Text(
              "Map View",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ),
          Expanded(
              child: Container(
            child:GoogleMap(
              mapType: MapType.hybrid,
              initialCameraPosition: model.kGooglePlex,
              onMapCreated: (GoogleMapController controller) {
                model.mapController.complete(controller);
              },
            ),
          ))
        ],
      ),
    );
  }
}
