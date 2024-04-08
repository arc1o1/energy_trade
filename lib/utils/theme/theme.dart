import 'package:energy_trade/utils/theme/custom_theme/appbar_theme.dart';
import 'package:energy_trade/utils/theme/custom_theme/bottom_sheet_theme.dart';
import 'package:energy_trade/utils/theme/custom_theme/checkbox_theme.dart';
import 'package:energy_trade/utils/theme/custom_theme/chip_theme.dart';
import 'package:energy_trade/utils/theme/custom_theme/elevated_button_theme.dart';
import 'package:energy_trade/utils/theme/custom_theme/outlined_button_theme.dart';
import 'package:energy_trade/utils/theme/custom_theme/text_field_theme.dart';
import 'package:energy_trade/utils/theme/custom_theme/text_theme.dart';
import 'package:flutter/material.dart';

class CcTheme {
  // private constructor
  CcTheme._();

  //--------------------------- light theme ------------------------------------

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'SanFranciscoPro',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.grey.shade300,
    appBarTheme: CcAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: CcBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: CcCheckboxTheme.lightCheckBoxTheme,
    chipTheme: CcChipTheme.lightChipTheme,
    elevatedButtonTheme: CcElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: CcOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: CcTextFieldTheme.lightInputDecorationTheme,
    textTheme: CcTextTheme.lightTextTheme,
  );
}
