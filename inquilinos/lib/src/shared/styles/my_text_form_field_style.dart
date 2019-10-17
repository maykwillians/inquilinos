import 'package:flutter/material.dart';
import 'package:inquilinos/src/shared/colors/my_colors.dart';

class MyTextFormFieldStyle {

  MyColors _myColors = MyColors();

  TextFormField textFormFieldCommom(String label) {
    return TextFormField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: _myColors.preto),
      ),
      style: TextStyle(color: _myColors.accent_color, fontSize: 22),
    );
  }
}