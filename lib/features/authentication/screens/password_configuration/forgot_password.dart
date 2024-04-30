import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/common/widgets/success_screen/notify_screen.dart';
import 'package:shop/features/authentication/screens/login/login.dart';
import 'package:shop/utils/constants/image_strings.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_strings.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(mySizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(
              allTexts.forgotPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: mySizes.spaceBetweenItems),

            Text(
              allTexts.forgotPassowrdSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: mySizes.spaceBetweenSections * 2),

            // Text Field
            TextField(
              decoration: InputDecoration(
                labelText: allTexts.email,
                prefixIcon: Icon(Iconsax.direct_right),
              ),
            ),

            const SizedBox(height: mySizes.spaceBetweenSections),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => NotifyScreen(
                  image: allImages.deliveryEmailAnimation, 
                  title: allTexts.recoveredPasswordTitle, 
                  subTitle: allTexts.recoveredPasswordSubTitle, 
                  onPressed: () => Get.to(() => const LoginScreen()),
                )), 
                child: const Text(allTexts.submitButton),
              ),
            ),
          ],
        ),
      ),
    );
  }
}