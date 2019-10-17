import 'package:flutter/material.dart';
import 'package:inquilinos/src/shared/colors/my_colors.dart';
import 'package:inquilinos/src/view/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Inquilinos',
      theme: ThemeData(
        primaryColor: MyColors().primary_color,
        accentColor: MyColors().accent_color,
        fontFamily: 'Roboto',
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}