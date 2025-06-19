import 'package:flutter/material.dart';
import 'package:safe_safai_shop/utils/theme/custom_themes/text_theme.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/bottom_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outlined_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
class SafeSafaiAppTheme{
  SafeSafaiAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
    textTheme: SafeSafaiTextTheme.lightTextTheme,
    chipTheme: SafeSafaiChipTheme.lightChipTheme,
    checkboxTheme: SafeSafaiCheckboxTheme.lightCheckboxTheme,
    appBarTheme: SafeSafaiAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: SafeSafaiBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: SafeSafaiElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: SafeSafaiOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: SafeSafaiTextFormFieldTheme.lightInputDecorationTheme,

  );
  static ThemeData darkTehme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: SafeSafaiTextTheme.darkTextTheme,
    chipTheme: SafeSafaiChipTheme.darkChipTheme,
    checkboxTheme: SafeSafaiCheckboxTheme.darkCheckboxTheme,
    appBarTheme: SafeSafaiAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: SafeSafaiBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: SafeSafaiElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: SafeSafaiOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: SafeSafaiTextFormFieldTheme.darkInputDecorationTheme,

  );

}