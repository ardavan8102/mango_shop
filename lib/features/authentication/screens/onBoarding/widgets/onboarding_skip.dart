import 'package:flutter/material.dart';
import 'package:shop/features/authentication/controllers/onBoarding/onBoarding_controller.dart';
import 'package:shop/utils/device/device_utility.dart';
import 'package:shop/utils/constants/sizes.dart';

class onBoardingSkip extends StatelessWidget {
  const onBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: myDeviceUtilities.getAppBarHeight(),
      right: mySizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}