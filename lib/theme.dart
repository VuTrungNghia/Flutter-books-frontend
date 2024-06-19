import 'package:books/constants.dart';
import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    fontFamily: "Muli",
    brightness: Brightness.light,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
        borderRadius: BorderRadius.circular(28),
        borderSide: const BorderSide(color: textColor),
        gapPadding: 10,
      );
  return InputDecorationTheme(
      floatingLabelBehavior: FloatingLabelBehavior.always,
      contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      border: outlineInputBorder
      );
}

TextTheme textTheme() {
  return const TextTheme(
    bodyLarge: TextStyle(color: textColor),
    bodyMedium: TextStyle(color: secondaryColor),
  );
}

AppBarTheme appBarTheme() {
  return const AppBarTheme(
      color: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: textColor),
      centerTitle: true,
      titleTextStyle: TextStyle(
        color: textColor,
        fontSize: 18,
      ));
}
