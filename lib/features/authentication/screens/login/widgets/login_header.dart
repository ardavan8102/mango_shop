import 'package:flutter/material.dart';
import 'package:shop/utils/constants/image_strings.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_strings.dart';

class loginHeader extends StatelessWidget {
  const loginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(dark ? allImages.darkAppLogo : allImages.lightAppLogo),
          height: 150,
        ),
        Text(
          allTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
    
        const SizedBox(height: mySizes.sm),
    
        Text(
          allTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}