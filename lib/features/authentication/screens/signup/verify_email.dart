import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/widgets/success_screen/notify_screen.dart';
import 'package:shop/features/authentication/screens/login/login.dart';
import 'package:shop/utils/constants/image_strings.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_strings.dart';
import 'package:shop/utils/helpers/helper_functions.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()), 
            icon: const Icon(CupertinoIcons.clear)
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(mySizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(
                image: AssetImage(allImages.deliveryEmailAnimation),
                width: myHelperFunctions.screenWidth() * 0.6,
              ),

              const SizedBox(height: mySizes.spaceBetweenSections),

              // Title & SubTitle
              Text(
                allTexts.verifyTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: mySizes.spaceBetweenItems),

              Text(
                'support@mango.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: mySizes.spaceBetweenItems),

              Text(
                allTexts.verifySubInfo,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: mySizes.spaceBetweenSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => NotifyScreen(
                    image: allImages.statusSuccessAnimation,
                    title: allTexts.verifiedSuccess,
                    subTitle: allTexts.verifiedSuccessSubTitle,
                    onPressed: () => Get.to(() => const LoginScreen()),
                  )), 
                  child: const Text(allTexts.continueText),
                ),
              ),

              const SizedBox(height: mySizes.spaceBetweenItems),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {}, 
                  child: const Text(allTexts.resendEmail),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}