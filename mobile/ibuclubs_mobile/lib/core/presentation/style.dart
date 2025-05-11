import 'package:flutter/material.dart';

const kPrimaryDarkColor = Color(0xFF2c6089);
const kPrimaryColor = Color(0xFF4176a4);
const kPrimaryLightColor = Color(0xFF37c6d2);
const kBackgroundColor = Color(0xFFf2f3f8);

const kDefaultPadding = EdgeInsets.all(16.0);
const kDefaultSmallPadding = EdgeInsets.all(8.0);
const kDefaultHorizontalPadding = EdgeInsets.symmetric(horizontal: 16.0);
const kDefaultVerticalPadding = EdgeInsets.symmetric(vertical: 16.0);

const kDefaultBorderRadius = BorderRadius.all(Radius.circular(16.0));
const kDefaultSmallBorderRadius = BorderRadius.all(Radius.circular(8.0));

const kDefaultShadow = BoxShadow(
  color: Colors.black12,
  blurRadius: 8.0,
  offset: Offset(0, 4),
);

final lightTheme = ThemeData.light().copyWith(
  primaryColor: kPrimaryColor,
  primaryColorDark: kPrimaryDarkColor,
  primaryColorLight: kPrimaryLightColor,
  scaffoldBackgroundColor: kBackgroundColor,
  textTheme: ThemeData.light().textTheme.copyWith(
    titleLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: kPrimaryColor,
    ),
    headlineLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: kPrimaryColor,
    ),
    bodyLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: kPrimaryColor,
    ),
    bodyMedium: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: kPrimaryColor,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: kPrimaryColor,
    ),
  ),
);
