import 'package:flutter/material.dart';

Color primaryColor = Colors.red.shade900;
Color appBarColor = Colors.yellow;

ThemeData customTheme = ThemeData(
  primaryColor: primaryColor,
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: primaryColor,
  ),
  scaffoldBackgroundColor: appBarColor,
);
