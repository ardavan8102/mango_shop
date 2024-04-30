import 'package:flutter/material.dart';
import 'package:shop/features/authentication/controllers/onBoarding/onBoarding_controller.dart';
import 'package:shop/utils/device/device_utility.dart';
import 'package:shop/utils/helpers/helper_functions.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:shop/utils/constants/colors.dart';
import 'package:shop/utils/constants/sizes.dart';

class onBoardingNavigation extends StatelessWidget {
  const onBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {

    final dark = myHelperFunctions.isDarkMode(context);
    final controller = OnBoardingController.instance;

    return Positioned(
      bottom: myDeviceUtilities.getBottomNavigationBarHeight() + 25,
      left: mySizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController, 
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? myColors.primary : myColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}