import 'package:flutter/material.dart';
import 'package:shop/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:shop/common/widgets/layouts/grid_layout.dart';
import 'package:shop/common/widgets/products/cards/product_card_vertical.dart';
import 'package:shop/features/shop/screens/home/widgets/categories_and_section_title.dart';
import 'package:shop/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:shop/features/shop/screens/home/widgets/primary_header.dart';
import 'package:shop/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  // Appbar
                  HomeAppBar(),
                  SizedBox(height: mySizes.spaceBetweenSections),

                  // Searchbar
                  searchContainer(labelText: allTexts.searchBarText),
                  SizedBox(height: mySizes.spaceBetweenSections),

                  // Categories & Heading
                  HomeCategoriesAndSectionTitle(),
                ],
              ),
            ),

            // Carousel
            Padding(
              padding: const EdgeInsets.all(mySizes.defaultSpace),
              child: Column(
                children: [
                  const promoSlider(),
                  const SizedBox(
                    height: mySizes.spaceBetweenItems,
                  ),
                  myGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


