import 'package:flutter/material.dart';
import 'package:shop/features/authentication/controllers/onBoarding/onBoarding_controller.dart';
import 'package:shop/utils/device/device_utility.dart';
import 'package:shop/utils/helpers/helper_functions.dart';
import 'package:shop/utils/constants/colors.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class onBoardingCircularButton extends StatelessWidget {
  const onBoardingCircularButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = myHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: myDeviceUtilities.getBottomNavigationBarHeight(),
      right: mySizes.defaultSpace,
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(), 
        child: const Icon(Iconsax.arrow_right_3),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? myColors.primary : myColors.dark,
          foregroundColor: dark ? myColors.light : myColors.light,
        ),
      ),
    );
  }
}