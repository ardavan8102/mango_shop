import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/widgets/custom_shapes/circular_shape.dart';
import 'package:shop/common/widgets/images/rounded_image.dart';
import 'package:shop/features/shop/controllers/home_controller.dart';
import 'package:shop/utils/constants/colors.dart';
import 'package:shop/utils/constants/image_strings.dart';
import 'package:shop/utils/constants/sizes.dart';

class promoSlider extends StatelessWidget {
  const promoSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());

    return Column(
      children: [
        CarouselSlider(
          items: [
            roundedImage(imageUrl: allImages.banner_1, applyImageRadius: true , padding: EdgeInsets.all(5.0)),
            roundedImage(imageUrl: allImages.banner_2, applyImageRadius: true, padding: EdgeInsets.all(5.0)),
            roundedImage(imageUrl: allImages.banner_3, applyImageRadius: true, padding: EdgeInsets.all(5.0)),
            roundedImage(imageUrl: allImages.banner_4, applyImageRadius: true, padding: EdgeInsets.all(5.0)),
            roundedImage(imageUrl: allImages.banner_5, applyImageRadius: true, padding: EdgeInsets.all(5.0)),
          ], 
          options: CarouselOptions(
            viewportFraction: 1,
            onPageChanged: (index, _) => controller.updatePageIndicator(index)
          ),
        ),
    
        const SizedBox(height: mySizes.spaceBetweenItems),
        Center(
          child: Obx(
            () => Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for ( int i = 0; i < 5; i++)
                myCircularContainer(
                  width: 20,
                  height: 5,
                  backgroundColor: controller.carouselCurrentIndex.value == i ? myColors.primary : myColors.grey,
                  margin: EdgeInsets.only(right: 10),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}