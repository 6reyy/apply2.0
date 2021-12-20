// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import

import 'package:apply_red/pages/login/widgets/client_data_form.dart';
import 'package:apply_red/pages/login/widgets/client_list.dart';
import 'package:apply_red/pages/login/widgets/devices_form.dart';
import 'package:apply_red/pages/login/widgets/general_form.dart';
import 'package:apply_red/pages/login/widgets/google_maps.dart';
import 'package:apply_red/pages/login/widgets/installation_form.dart';
import 'package:apply_red/pages/login/widgets/login_apply.dart';
import 'package:apply_red/pages/login/widgets/structure_form.dart';
import 'package:apply_red/pages/login/widgets/substations_form.dart';
import 'package:apply_red/pages/login/widgets/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Welcome(),
              ClientDataForm(),
            ],
          ),
        ),
      ),
    );
  }
}
