import 'package:aurakart/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:aurakart/utils/theme/custom_themes/appbar_theme.dart';
import 'package:aurakart/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:aurakart/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:aurakart/utils/theme/custom_themes/chip_theme.dart';
import 'package:aurakart/utils/theme/custom_themes/eleveted_button_theme.dart';
import 'package:aurakart/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:aurakart/utils/theme/custom_themes/text_field_theme.dart';
import 'package:aurakart/utils/theme/custom_themes/text_theme.dart';

class TAppTheme {
  TAppTheme._(); // To avoid creating instances

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: TColors.primary,
    disabledColor: TColors.grey,
    scaffoldBackgroundColor: TColors.white,
    textTheme: TTextTheme.lightTextTheme,
    elevatedButtonTheme: TElevetedButtonTheme.lightElevetedButtonTheme,
    appBarTheme: TAppbarTheme.lightAppbarTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlineButtonTheme,
    chipTheme: TChipTheme.lightChipTheme,
    inputDecorationTheme: TTextFieldTheme.lightInputDecorationTheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: TColors.primary,
    disabledColor: TColors.grey,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TTextTheme.darkTextTheme,
    elevatedButtonTheme: TElevetedButtonTheme.darkElevetedButtonTheme,
    appBarTheme: TAppbarTheme.darkAppbarTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlineButtonTheme,
    chipTheme: TChipTheme.darkChipTheme,
    inputDecorationTheme: TTextFieldTheme.darkInputDecorationTheme,
  );
}
