import 'package:flutter/material.dart';

const Color bluishClr = Color(0xFF4e5ae8); 
const Color yellowClr = Color(0xFFFFB746);
const Color pinkClr = Color(0xFFff4667);
const Color white = Colors.white;
const primaryClr = bluishClr;
const Color darkGreyClr = Color(0xFF121212);
const Color darkHeaderClr = Color(0xFF424242);
const Color transparent = Colors.transparent;
const Color bgClr = Color(0xFFEEEEEE);

class Themes {
  static final light = ThemeData(
      primaryColor: primaryClr, // appbar and color
      brightness: Brightness.light);

  static final dark = ThemeData(
      primaryColor: yellowClr, // appbar and color
      brightness: Brightness.dark);
}
