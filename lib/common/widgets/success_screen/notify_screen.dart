import 'package:flutter/material.dart';
import 'package:shop/common/styles/spacing_styles.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_strings.dart';
import 'package:shop/utils/helpers/helper_functions.dart';

class NotifyScreen extends StatelessWidget {
  const NotifyScreen({super.key, required this.image, required this.title, required this.subTitle, required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyles.paddingWithAppbarHeight,
          child: Column(
            children: [
              // Image
              Image(
                image: AssetImage(image),
                width: myHelperFunctions.screenWidth() * 0.6,
              ),

              const SizedBox(height: mySizes.spaceBetweenSections),

              // Title & SubTitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: mySizes.spaceBetweenItems),

              Text(
                subTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: mySizes.spaceBetweenSections),

              // Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: onPressed, 
                  child: const Text(allTexts.continueText),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}