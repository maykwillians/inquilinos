import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:inquilinos/src/shared/colors/my_colors.dart';

class MyText {

  MyColors _myColors = MyColors();

  Text textCommon(String text) {
    return Text(text,
        style: TextStyle(
            color: _myColors.black,
            fontSize: 25,
            fontFamily: 'Mansalva'));
  }
  Text textTitleCommon(String text) {
    return Text(text,
        style: TextStyle(
            color: _myColors.black,
            fontSize: 29,
            fontFamily: 'Pacifico'));
  }
}