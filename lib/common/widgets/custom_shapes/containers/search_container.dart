import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/utils/constants/colors.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/device/device_utility.dart';
import 'package:shop/utils/helpers/helper_functions.dart';

class searchContainer extends StatelessWidget {
  const searchContainer({
    super.key, 
    required this.labelText, 
    this.icon = Iconsax.search_normal, 
    this.showBackground = true, 
    this.showBorder = true,
  });

  final String labelText;
  final IconData icon;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = myHelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:  mySizes.defaultSpace),
      child: Container(
        width: myDeviceUtilities.getScreenWidth(context),
        padding: EdgeInsets.all(mySizes.md),
        decoration: BoxDecoration(
          color: showBackground ? dark ? myColors.dark : Colors.white : Colors.transparent,
          borderRadius: BorderRadius.circular(mySizes.cardRadiusLg),
          border: showBorder ? Border.all(color: dark ? myColors.grey : myColors.white) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: dark ? myColors.white : myColors.darkerGrey,
            ),
            const SizedBox(width: mySizes.spaceBetweenItems),
            Text(
              labelText,
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ),
    );
  }
}