// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import, unused_field, unused_element, unused_local_variable

import 'package:apply_red/pages/login/widgets/input_text_form.dart';
import 'package:apply_red/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GeneralForm extends StatefulWidget {
  const GeneralForm({Key? key}) : super(key: key);

  @override
  State<GeneralForm> createState() => _GeneralFormState();
}

class _GeneralFormState extends State<GeneralForm> {
  // final tensiones = ["Tension Baja", "Tension Media", "Tension Alta"];
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
            "Informacion general - Rotulo GIS: 576994",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'raleway'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Seleccionar fecha:",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'raleway'),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 70,
            child: CupertinoDatePicker(
              minimumYear: 2000,
              maximumYear: 2021,
              mode: CupertinoDatePickerMode.date,
              initialDateTime: _dateTime,
              onDateTimeChanged: (dateTime) {
                print(dateTime);
                setState(() {
                  _dateTime = dateTime;
                });
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Seleccionar tension:",
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
                  "Tensión Baja",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'sans',
                    color: Color(0xffcccccc),
                  ),
                ),
                Text(
                  "Tensión Media",
                  style: TextStyle(
                    fontSize: 17,
                    fontFamily: 'sans',
                    color: Color(0xffcccccc),
                  ),
                ),
                Text(
                  "Tensión Alta",
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
            height: 20,
          ),
          InputTextForm(
              iconPath: 'assets/pages/login/icons/register.svg',
              placeholder: "Rotulo terreno"),
          SizedBox(
            height: 20,
          ),
          InputTextForm(
              iconPath: 'assets/pages/login/icons/address.svg',
              placeholder: "Descripción Poste"),
          SizedBox(
            height: 20,
          ),
          InputTextForm(
              iconPath: 'assets/pages/login/icons/address.svg',
              placeholder: "Condición"),
          SizedBox(
            height: 20,
          ),
          InputTextForm(
              iconPath: 'assets/pages/login/icons/address.svg',
              placeholder: "Poste Distancia"),
          SizedBox(
            height: 20,
          ),
          InputTextForm(
              iconPath: 'assets/pages/login/icons/address.svg',
              placeholder: "Distancia"),
          SizedBox(
            height: 20,
          ),
          InputTextForm(
              iconPath: 'assets/pages/login/icons/address.svg',
              placeholder: "Distancia"),
          SizedBox(
            height: 25,
          ),
          Text(
            "Información Luminaria",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontFamily: 'raleway'),
          ),
          SwitchListTile(
              title: Text("Luminaria"),
              subtitle: Text("Ingresar descripción"),
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }),
          SwitchListTile(
              title: Text("Foto Celda"),
              subtitle: Text("Ingresar descripción"),
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              }),
          SizedBox(
            height: 5,
          ),
          InputTextForm(
              iconPath: 'assets/pages/login/icons/address.svg',
              placeholder: "Cantidad Luminaria"),
          SizedBox(
            height: 20,
          ),
          InputTextForm(
              iconPath: 'assets/pages/login/icons/address.svg',
              placeholder: "Tipo Luminaria"),
          SizedBox(
            height: 20,
          ),
          InputTextForm(
              iconPath: 'assets/pages/login/icons/address.svg',
              placeholder: "Potencia"),
          SizedBox(
            height: 20,
          ),
          InputTextForm(
              iconPath: 'assets/pages/login/icons/address.svg',
              placeholder: "Comentario Luminaria"),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
