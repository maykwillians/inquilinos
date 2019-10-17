import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inquilinos/src/shared/colors/my_colors.dart';
import 'package:inquilinos/src/shared/strings/my_strings.dart';
import 'package:inquilinos/src/shared/styles/my_text_styles.dart';
import 'package:inquilinos/src/view/login.dart';

class SplashScreen extends StatelessWidget {

  MyTextStyle _myTextStyle = MyTextStyle();
  MyColors _myColors = MyColors();
  MyStrings _myStrings = MyStrings();

  @override
  Widget build(BuildContext context) {

    Timer(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
    });

    return Scaffold(
      /*appBar: AppBar(
        title: Text(_myStrings.app_name),
      ),*/
      body: Container(
        color: _myColors.primary_color,
        child: Center(
          child: Text(_myStrings.app_name,
              style: TextStyle(
                  color: _myColors.branco,
                  fontSize: 29,
                  fontFamily: 'Pacifico')),
        ),
      ),
    );
  }
}