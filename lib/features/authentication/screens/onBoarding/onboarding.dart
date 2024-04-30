import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/features/authentication/controllers/onBoarding/onBoarding_controller.dart';
import 'package:shop/features/authentication/screens/onBoarding/widgets/onboarding_button.dart';
import 'package:shop/features/authentication/screens/onBoarding/widgets/onboarding_navigation.dart';
import 'package:shop/features/authentication/screens/onBoarding/widgets/onboarding_page.dart';
import 'package:shop/features/authentication/screens/onBoarding/widgets/onboarding_skip.dart';
import 'package:shop/utils/constants/image_strings.dart';
import 'package:shop/utils/constants/text_strings.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController()); // Create instance of Controller

    return Scaffold(
      body: Stack(
        children: [
          // Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                image: allImages.onBoardingImage1,
                title: allTexts.onBoardingTitle1,
                subTitle: allTexts.onBoardingSubTitle1,
              ),

              onBoardingPage(
                image: allImages.onBoardingImage2,
                title: allTexts.onBoardingTitle2,
                subTitle: allTexts.onBoardingSubTitle2,
              ),

              onBoardingPage(
                image: allImages.onBoardingImage3,
                title: allTexts.onBoardingTitle3,
                subTitle: allTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          // Skip Button
          onBoardingSkip(),

          // Dot Navigation
          onBoardingNavigation(),

          // Circular Button
          onBoardingCircularButton(),
        ],
      ),
    );
  }
}





