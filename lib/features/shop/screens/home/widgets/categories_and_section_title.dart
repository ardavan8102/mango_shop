import 'package:flutter/material.dart';
import 'package:shop/common/widgets/texts/section_heading_with_buttons.dart';
import 'package:shop/features/shop/screens/home/widgets/home_categories.dart';
import 'package:shop/utils/constants/colors.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_strings.dart';

class HomeCategoriesAndSectionTitle extends StatelessWidget {
  const HomeCategoriesAndSectionTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: mySizes.defaultSpace),
      child: Column(
        children: [
          // Heading
          sectionHeadingwithButton(
            title: allTexts.scrollableCategoriesTitle,
            showActionButton: false,
            textColor: myColors.white,
          ),
          const SizedBox(height: mySizes.spaceBetweenItems),
    
          // Categories
          HomeCategoriesContainer(),
        ],
      ),
    );
  }
}