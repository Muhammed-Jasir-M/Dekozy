import 'package:aurakart/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();

  // Light Theme For Chip
  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: TColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: TColors.black),
    selectedColor: TColors.primary,
    checkmarkColor: TColors.white,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
  );

  // Dark Theme For Chip
  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: TColors.darkerGrey,
    labelStyle: TextStyle(color: TColors.white),
    selectedColor: TColors.primary,
    checkmarkColor: TColors.white,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12),
  );
}
