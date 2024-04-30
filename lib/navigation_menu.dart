import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/features/shop/screens/home/home.dart';
import 'package:shop/utils/constants/colors.dart';
import 'package:shop/utils/constants/text_strings.dart';
import 'package:shop/utils/helpers/helper_functions.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = myHelperFunctions.isDarkMode(context);
    final controller = Get.put(NavigationController());

    return Scaffold(
      bottomNavigationBar: LayoutBuilder(
        builder: (context, constraints) =>  Stack(
          children: [
            Obx(
              () => NavigationBar(
                indicatorColor: Colors.transparent,
                shadowColor: Colors.transparent,
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                height: 80,
                backgroundColor: dark ? myColors.black : myColors.white,
                elevation: 0,
                selectedIndex: controller.selectedIndex.value,
                onDestinationSelected: (index) => controller.selectedIndex.value = index,
              
                destinations: [
                  NavigationDestination(
                    icon: Icon(Iconsax.home), 
                    label: allTexts.homeButtonText,
                  ),
                  NavigationDestination(
                    icon: Icon(Iconsax.shop), 
                    label: allTexts.storeButtonText,
                  ),
                  NavigationDestination(
                    icon: Icon(Iconsax.heart), 
                    label: allTexts.wishlistButtonText,
                  ),
                  NavigationDestination(
                    icon: Icon(Iconsax.user), 
                    label: allTexts.profileButtonText,
                  ),
                ],
              ),
            ),

            // Animated Underline Below Destinations
            Obx(
              () => AnimatedPositioned(
                bottom: 0,
                left: constraints.maxWidth / 4 * (controller.selectedIndex.value) + (constraints.maxWidth / 7.9 ) - 30,
                child: Container(
                  width: 60,
                  height: 8,
                  decoration: const BoxDecoration(
                    color: myColors.primary,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                  ),
                ), 
                duration: const Duration(
                  milliseconds: 100,
                ),
              ),
            ),
          ],
        ),
        
      ),
      body: Obx(
        () => controller.screens[
          controller.selectedIndex.value
        ],
      ),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    Container(color: Colors.yellow),
    Container(color: Colors.blue),
    Container(color: Colors.green),
  ];
}