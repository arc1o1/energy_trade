import 'package:energy_trade/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class CcOutlinedButtonTheme {
  // private constructor
  CcOutlinedButtonTheme._();

  //--------------------------- light theme ------------------------------------

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.blue,
      side: const BorderSide(color: CcColors.primary),
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      textStyle: const TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
    ),
  );

  //---------------------------- dark theme ------------------------------------
}
