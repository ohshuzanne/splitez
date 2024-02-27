import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: HexColor("#F3F2F4"),
    primary: HexColor("#EAE7ED"),
    secondary: HexColor("#CFCBD4"),
    onBackground: HexColor("#13022B"),
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: HexColor("#13022B"),
    primary: HexColor("#352847"),
    secondary: HexColor("#5C5466"),
    onBackground: HexColor("#F3F2F4"),
  ),
);
