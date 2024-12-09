import "package:aurakart/utils/constants/sizes.dart";
import "package:flutter/material.dart";
import 'package:aurakart/common/styles/spacing_styles.dart';

class ASpacingStyle {
  static const EdgeInsetsGeometry paddingwithAppBarHeight = EdgeInsets.only(
    top: ASizes.appBarHeight,
    left: ASizes.defaultSpace,
    bottom: ASizes.defaultSpace,
    right: ASizes.defaultSpace,
  );
}
