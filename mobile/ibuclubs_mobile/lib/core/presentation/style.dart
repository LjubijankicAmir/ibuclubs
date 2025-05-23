import 'package:flutter/material.dart';

const kPrimaryDarkColor = Color(0xFF2c6089);
const kPrimaryColor = Color(0xFF4176a4);
const kPrimaryLightColor = Color(0xFF37c6d2);
const kBackgroundColor = Color(0xFFf2f3f8);
const kInputFieldColor = Color(0xFFf1f1f1);
const kErrorColor = Color.fromRGBO(255, 0, 0, 1);
final kHintColor = Colors.black.withValues(alpha: 0.6);

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
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: kInputFieldColor,
    hintStyle: TextStyle(color: kHintColor, fontSize: kDefaultFontSize),
    border: OutlineInputBorder(
      borderRadius: kDefaultBorderRadius,
      borderSide: BorderSide.none,
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: kDefaultBorderRadius,
      borderSide: BorderSide(color: kPrimaryLightColor, width: 2),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: kDefaultBorderRadius,
      borderSide: BorderSide(color: kErrorColor, width: 2),
    ),
    labelStyle: TextStyle(fontSize: kDefaultFontSize),
    floatingLabelStyle: WidgetStateTextStyle.resolveWith((
      Set<WidgetState> states,
    ) {
      if (states.contains(WidgetState.error)) {
        return const TextStyle(color: kErrorColor);
      }
      if (states.contains(WidgetState.focused)) {
        return const TextStyle(color: kPrimaryLightColor);
      }
      return TextStyle(color: kHintColor);
    }),
    errorStyle: const TextStyle(color: kErrorColor),
    contentPadding: kDefaultSmallPadding,
    floatingLabelAlignment: FloatingLabelAlignment.start,
  ),
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
