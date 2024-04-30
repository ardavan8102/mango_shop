import 'package:flutter/material.dart';
import 'package:shop/utils/constants/sizes.dart';

class SpacingStyles {
  static const EdgeInsetsGeometry paddingWithAppbarHeight = EdgeInsets.only(
    top: mySizes.appBarHeight,
    left: mySizes.defaultSpace,
    right: mySizes.defaultSpace,
    bottom: mySizes.defaultSpace,
  );
}