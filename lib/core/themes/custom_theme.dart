import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData light() {
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: Color(0xffF5CB58),
      primaryColor: Color(0xFFF3E9B5),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFFE95322),
          minimumSize: Size(double.infinity, 20),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
