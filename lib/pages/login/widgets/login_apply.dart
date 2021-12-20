// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace, unused_import

import 'package:apply_red/pages/login/widgets/input_text_form.dart';
import 'package:apply_red/widgets/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

class LoginApply extends StatefulWidget {
  const LoginApply({Key? key}) : super(key: key);

  @override
  State<LoginApply> createState() => _LoginApplyState();
}

class _LoginApplyState extends State<LoginApply> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          InputTextForm(
              iconPath: 'assets/pages/login/icons/email.svg',
              placeholder: "Email Address"),
          SizedBox(
            height: 20,
          ),
          InputTextForm(
              iconPath: 'assets/pages/login/icons/password.svg',
              placeholder: "Password"),
          Container(
            width: double.infinity,
            child: CupertinoButton(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.symmetric(vertical: 15),
              child: Text(
                "Forgot password",
                style: TextStyle(
                  fontFamily: 'sans',
                ),
              ),
              onPressed: () {},
            ),
          ),
          SizedBox(
            height: 20,
          ),
          RoundedButton(
            onPressed: () {},
            label: "Sign in",
          ),
          SizedBox(
            height: 20,
          ),
          // Container(
          //   height: 1000,
          //   width: 20,
          //   color: Colors.black,
          // ),
        ],
      ),
    );
  }
}
