import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MarkerDemo extends StatefulWidget {
  const MarkerDemo({Key? key}) : super(key: key);

  @override
  _MarkerDemoState createState() => _MarkerDemoState();
}

class _MarkerDemoState extends State<MarkerDemo> {
  //
  LatLng yavatmalLocation = LatLng(20.3899, 78.1307);

  //
  @override
  void initState() {
    super.initState();
  }

  //
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Marker Demo'),
      ),

      //
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: yavatmalLocation,
          zoom: 10,
        ),
        //
        markers: {
          Marker(
            markerId: MarkerId('Marker'),
            position: yavatmalLocation,
            infoWindow: InfoWindow(
              title: 'Yavatmal',
              snippet: 'Cotton City',
            ),

            // simple marker
            icon: BitmapDescriptor.defaultMarkerWithHue(
              BitmapDescriptor.hueViolet,
            ),

            //draggable: true,
            // onTap: () {
            //   //
            // },

            // //
            // onDragEnd: (LatLng newPosition) {
            //   //
            // },

            // //
            // onDragStart: (LatLng newPosition) {
            //   //
            // },

            // onDrag: (LatLng newPosition) {
            //   //
            // },
          ),
        },
      ),
    );
  }
}
