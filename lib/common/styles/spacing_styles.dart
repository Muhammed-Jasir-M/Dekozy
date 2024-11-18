import "package:aurakart/utils/constants/sizes.dart";
import "package:flutter/material.dart";
import 'package:aurakart/common/styles/spacing_styles.dart';

class TSpacingStyle {
  static EdgeInsetsGeometry paddingwithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.defaultSpace,
    bottom: TSizes.defaultSpace,
    right: TSizes.defaultSpace,
  );
}