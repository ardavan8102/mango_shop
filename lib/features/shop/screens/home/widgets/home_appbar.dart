import 'package:flutter/material.dart';
import 'package:shop/common/widgets/appbar/appbar.dart';
import 'package:shop/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:shop/utils/constants/colors.dart';
import 'package:shop/utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return myAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(allTexts.homeAppbarTitle, style: Theme.of(context).textTheme.labelSmall!.apply(color: myColors.grey)),
          Text(allTexts.homeAppbarSubTitle, style: Theme.of(context).textTheme.labelLarge!.apply(color: myColors.white)),
        ],
      ),
      actions: [
        cartCounterIcon(
          onPressed: () {},
          iconColor: myColors.white,
        ),
      ],
    );
  }
}