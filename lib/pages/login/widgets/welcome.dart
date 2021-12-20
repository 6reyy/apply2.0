// ignore_for_file: prefer_const_constructors, unused_import, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: LayoutBuilder(builder: (_, contraints) {
        return Container(
          child: Stack(
            children: <Widget>[
              Positioned(
                top: contraints.maxHeight * 0.55,
                child: Column(
                  children: <Widget>[
                    Container(
                      height: 3,
                      width: contraints.maxWidth,
                      color: Color(0xffeeeeee),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Apply Red 2.0",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'raleway'),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                  ],
                ),
              ),
              // Positioned(
              //   top: contraints.maxHeight * 0.1,
              //   child: SvgPicture.asset(
              //     'assets / pages / login / luz.svg',
              //     width: contraints.maxWidth * 0.4,
              //   ),
              // )
            ],
          ),
        );
      }),
    );
  }
}
