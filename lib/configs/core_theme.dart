import 'package:flutter/material.dart';

const fontFamily = 'Poppins';

final themeLight = ThemeData(
  primaryColorLight: const Color(0xffC0392B),
  brightness: Brightness.light,
  primaryColor: const Color(0xffC0392B),
  highlightColor: Colors.black,
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
      .copyWith(
        secondary: Colors.black,
        brightness: Brightness.light,
      )
      .copyWith(surface: Colors.white),
);

final themeDark = ThemeData(
  brightness: Brightness.dark,
  primaryColorDark: const Color(0xffC0392B),
  primaryColor: const Color(0xffC0392B),
  highlightColor: const Color(0xffC0392B),
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.black,
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red)
      .copyWith(
        secondary: const Color(0xffC0392B),
        brightness: Brightness.dark,
      )
      .copyWith(surface: Colors.grey[800]),
);
