// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import, unused_field, unused_element, unused_local_variable

import 'package:apply_red/pages/login/widgets/input_text_form.dart';
import 'package:apply_red/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SubstationsForm extends StatefulWidget {
  const SubstationsForm({Key? key}) : super(key: key);

  @override
  State<SubstationsForm> createState() => _SubstationsFormState();
}

class _SubstationsFormState extends State<SubstationsForm> {
  bool value = false;
  DateTime _dateTime = DateTime.now();
  var _value = false;
  final LatLng _center = const LatLng(-33.047237, -71.612686);

  void _onMapCreated(GoogleMapController controller) {
    var mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Información Subestaciones",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'raleway'),
          ),
          SizedBox(
            height: 20,
          ),
          InputTextForm(
            iconPath: 'assets/pages/login/icons/register.svg',
            placeholder: "Nombre",
          ),
          SizedBox(
            height: 20,
          ),
          InputTextForm(
            iconPath: 'assets/pages/login/icons/register.svg',
            placeholder: "Codigo",
          ),
          SizedBox(
            height: 20,
          ),
          InputTextForm(
            iconPath: 'assets/pages/login/icons/thunder.svg',
            placeholder: "KVA",
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Montaje:",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'raleway'),
          ),
          Container(
            height: 70,
            child: CupertinoPicker(
              onSelectedItemChanged: (selecteIndex) {
                print(selecteIndex);
              },
              children: [
                Text(
                  "Ingresar Tipo de Montaje 1",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'sans',
                    color: Color(0xffcccccc),
                  ),
                ),
                Text(
                  "Ingresar Tipo de Montaje 2",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'sans',
                    color: Color(0xffcccccc),
                  ),
                ),
                Text(
                  "Ingresar Tipo de Montaje 3",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'sans',
                    color: Color(0xffcccccc),
                  ),
                ),
              ],
              itemExtent: 25,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          InputTextForm(
              iconPath: 'assets/pages/login/icons/address.svg',
              placeholder: "Descripción estructura"),
          SizedBox(
            height: 20,
          ),
          InputTextForm(
              iconPath: 'assets/pages/login/icons/address.svg',
              placeholder: "Comentario"),
        ],
      ),
    );
  }
}
