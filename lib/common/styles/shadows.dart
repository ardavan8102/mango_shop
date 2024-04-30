import 'package:flutter/material.dart';
import 'package:shop/utils/constants/colors.dart';

class ShadowStyles {
  static final verticalProductShadow = BoxShadow(
    color: myColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );

  static final horizontalProductShadow = BoxShadow(
    color: myColors.darkGrey.withOpacity(0.1),
    blurRadius: 50,
    spreadRadius: 7,
    offset: const Offset(0, 2)
  );
}