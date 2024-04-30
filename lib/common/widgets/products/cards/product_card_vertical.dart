import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/common/styles/shadows.dart';
import 'package:shop/common/widgets/custom_shapes/containers/rounded_container.dart';
import 'package:shop/common/widgets/icons/circular_icon.dart';
import 'package:shop/common/widgets/images/rounded_image.dart';
import 'package:shop/common/widgets/texts/product_title.dart';
import 'package:shop/utils/constants/colors.dart';
import 'package:shop/utils/constants/image_strings.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/helpers/helper_functions.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = myHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyles.verticalProductShadow],
          borderRadius: BorderRadius.circular(mySizes.productImageRadius),
          color: dark ? myColors.darkerGrey : myColors.white,
        ),
        child: Column(
          children: [
            // Thumbnail , wishlist button, discount tag
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(mySizes.sm),
              backgroundColor: dark ? myColors.dark : myColors.light,
              child: Stack(
                children: [
                  // Thumbnail image
                  const roundedImage(
                    imageUrl: allImages.bedroomBed_black,
                    applyImageRadius: true,
                  ),
      
                  // Sale tag
                  Positioned(
                    top: 5,
                    child: RoundedContainer(
                      backgroundColor: myColors.secondary.withOpacity(0.5),
                      radius: mySizes.sm,
                      padding: const EdgeInsets.symmetric(
                          horizontal: mySizes.sm, vertical: mySizes.xs),
                      child: Text(
                        '%25',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .apply(color: myColors.black),
                      ),
                    ),
                  ),
      
                  // Favorite icon button
                  Positioned(
                    top: 0,
                    right: 0,
                    child: circularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
      
            const SizedBox(height: mySizes.spaceBetweenItems / 2),
      
            // Details
            Padding(
              padding: EdgeInsets.only(left: mySizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  productTitle(
                    title: 'Blackwood Bed',
                  ),
                  const SizedBox(height: mySizes.spaceBetweenItems / 2),
                  Row(
                    children: [
                      Text(
                        'Khosh-khab',
                        style: Theme.of(context).textTheme.labelMedium,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(width: mySizes.xs),
                      const Icon(Iconsax.verify5, color: myColors.primary, size: mySizes.iconSm),
                    ],
                  ),
      
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price Tage
                      Text(
                        '\$35.5',
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
      
                      Container(
                        decoration: BoxDecoration(
                          color: myColors.darkGrey,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(mySizes.cardRadiusMd),
                            bottomRight: Radius.circular(mySizes.productImageRadius),
                          ),
                        ),
                        child: SizedBox(
                          width: mySizes.iconLg * 1.2,
                          height: mySizes.iconLg * 1.2,
                          child: Center(
                            child: Icon(
                              Iconsax.add,
                              color: myColors.white,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


