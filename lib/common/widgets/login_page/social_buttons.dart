import 'package:flutter/material.dart';
import 'package:shop/utils/constants/colors.dart';
import 'package:shop/utils/constants/image_strings.dart';
import 'package:shop/utils/constants/sizes.dart';

class socialButtons extends StatelessWidget {
  const socialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: myColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {}, 
            icon: const Image(
              width: mySizes.iconMd,
              height: mySizes.iconMd,
              image: AssetImage(allImages.google),
            ),
          ),
        ),
    
        const SizedBox(width: mySizes.spaceBetweenItems),
    
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: myColors.grey,
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {}, 
            icon: const Image(
              width: mySizes.iconMd,
              height: mySizes.iconMd,
              image: AssetImage(allImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}