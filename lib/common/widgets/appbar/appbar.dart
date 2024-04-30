import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/device/device_utility.dart';

class myAppBar extends StatelessWidget implements PreferredSizeWidget {
  const myAppBar({
    super.key, 
    this.title, 
    this.showBackArrow = false, 
    this.leadingIcon, 
    this.actions, 
    this.leadingOnPressed
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: mySizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        leading: showBackArrow ? IconButton(onPressed: () => Get.back(), icon: Icon(Iconsax.arrow_left)) 
        : leadingIcon != null ? IconButton(onPressed: leadingOnPressed, icon: Icon(leadingIcon)) : null,
        title: title,
        actions: actions,
      ),
    );
  }
  
  @override
  Size get preferredSize => Size.fromHeight(myDeviceUtilities.getAppBarHeight());
}