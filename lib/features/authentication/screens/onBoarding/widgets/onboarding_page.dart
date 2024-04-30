import 'package:flutter/material.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/helpers/helper_functions.dart';

class onBoardingPage extends StatelessWidget {
  const onBoardingPage({
    super.key, required this.image, required this.title, required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(mySizes.defaultSpace),
      child: Column(
        children: [
          Image(
            image: AssetImage(image),
            width: myHelperFunctions.screenWidth() * 0.8,
            height: myHelperFunctions.screenHeight() * 0.6,
          ),
          Text(
            title, 
            style: Theme.of(context).textTheme.headlineMedium, 
            textAlign: TextAlign.center,
          ),
      
          const SizedBox(height: mySizes.spaceBetweenItems),
      
          Text(
            subTitle, 
            style: Theme.of(context).textTheme.bodyMedium, 
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}