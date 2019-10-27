import 'package:flutter/material.dart';
import 'package:inquilinos/src/shared/colors/my_colors.dart';

class MyButtons {

  MyColors _myColors = MyColors();

  RaisedButton raisedButtonCommon(String text, {Function acction}) {
    return RaisedButton(
        color: _myColors.white,
        onPressed: () {
          acction();
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        textColor: _myColors.primary_color,
        child: Container(
            height: 50,
            child: Center(
                child: Text(text, style: TextStyle(fontSize: 20),))));
  }
}