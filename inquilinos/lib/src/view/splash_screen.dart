import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inquilinos/src/shared/colors/my_colors.dart';
import 'package:inquilinos/src/shared/strings/my_strings.dart';
import 'package:inquilinos/src/view/login.dart';

class SplashScreen extends StatelessWidget {

  MyColors _myColors = MyColors();
  MyStrings _myStrings = MyStrings();

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    });

    return Scaffold(
      body: Container(
        color: _myColors.primary_color,
        child: Center(
          child: Text(_myStrings.app_name,
              style: TextStyle(
                  color: _myColors.white,
                  fontSize: 29,
                  fontFamily: 'Pacifico')),
        ),
      ),
    );
  }
}