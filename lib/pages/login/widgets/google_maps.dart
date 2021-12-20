import 'package:apply_red/pages/login/widgets/input_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';

class GoogleMaps extends StatefulWidget {
  const GoogleMaps({Key? key}) : super(key: key);

  @override
  _GoogleMaps createState() => _GoogleMaps();
}

class _GoogleMaps extends State<GoogleMaps> {
  late GoogleMapController mapController;
  late String address;

  final LatLng _center = const LatLng(-33.047237, -71.612686);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 350,
            width: 350,
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 15.0,
              ),
            ),
          ),
          // Positioned(
          //   top: 15,
          //   right: 7.0,
          //   left: 7.0,
          //   child: Container(
          //     height: 25,
          //     width: double.infinity,
          //     decoration: BoxDecoration(
          //       borderRadius: BorderRadius.circular(7),
          //       color: Colors.white,
          //     ),
          //     child: TextField(
          //       decoration: InputDecoration(
          //         hintText: 'Ingrese direccion a buscar',
          //         border: InputBorder.none,
          //         contentPadding: EdgeInsets.only(left: 15, top: 15),
          //         suffixIcon: IconButton(
          //           icon: IconButton(
          //             icon: Icon(Icons.search),
          //             onPressed: address,
          //             iconSize: 15,
          //           ),
          //         ),
          //       ),
          //       onChanged: (val) {
          //         setState(() {
          //           address = val;
          //         });
          //       },
          //     ),
          //   ),
          // ),
          SizedBox(
            height: 20,
          ),
          InputListTile(title: "579474", subtitle: "ESTADO: PENDIENTE"),
          InputListTile(title: "297538", subtitle: "ESTADO: CATRASTADO"),
          InputListTile(title: "654231", subtitle: "ESTADO: PENDIENTE"),
        ],
      ),
    );
  }

//   barraBusqueda() {
//   Geolocator().placemarkFromAddress(address).then((result) {
//     mapController.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(
//         target:
//             LatLng(result[0].position.latitude, result[0].position.longitude),
//         zoom: 10.0)));
//   });
// }

//                void onMapCreated(controller) {
//                  setState(() {
//                   mapController = controller;
//                  });
}
