import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/utils/constants/colors.dart';

class cartCounterIcon extends StatelessWidget {
  const cartCounterIcon({
    super.key, required this.iconColor, required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: onPressed, 
          icon: Icon(
            Iconsax.shopping_bag, 
            color: iconColor,
          ),
        ),
        Positioned(
          right: 1,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: myColors.black.withOpacity(0.5),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(color: myColors.white, fontSizeFactor: 0.7),
              ),
            ),
          ),
        ),
      ],
    );
  }
}