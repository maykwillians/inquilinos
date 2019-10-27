import 'package:flutter/material.dart';
import 'package:inquilinos/src/shared/colors/my_colors.dart';

class MyTextField {

  MyColors _myColors = MyColors();

  TextFormField textFormFieldCommon(String label, TextEditingController input) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: input,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: _myColors.white),
      ),
      style: TextStyle(color: _myColors.white, fontSize: 18),
    );
  }
}