import 'package:flutter/material.dart';
import 'package:shop/utils/constants/colors.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/helpers/helper_functions.dart';

class circularIcon extends StatelessWidget {
  const circularIcon({
    super.key,
    this.width,
    this.height,
    this.size = mySizes.lg,
    required this.icon,
    this.color,
    this.backgroundColor,
    this.onPressed,
  });

  final double? width, height, size;
  final IconData? icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor != null
            ? backgroundColor!
            : myHelperFunctions.isDarkMode(context)
                ? myColors.black.withOpacity(0.9)
                : myColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(
        onPressed: onPressed, 
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
      ),
    );
  }
}
