// ignore_for_file: unnecessary_this, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class RoundedButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const RoundedButton({Key? key, required this.onPressed, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 5,
            )
          ],
          borderRadius: BorderRadius.circular(30),
          color: Color(0xff2962FF),
        ),
        child: Text(
          this.label,
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'sans',
            letterSpacing: 1,
            fontSize: 18,
          ),
        ),
      ),
      onPressed: this.onPressed,
    );
  }
}
