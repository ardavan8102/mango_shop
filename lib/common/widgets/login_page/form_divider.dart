import 'package:flutter/material.dart';
import 'package:shop/utils/constants/colors.dart';

class formDivider extends StatelessWidget {
  const formDivider({
    super.key,
    required this.dark, required this.dividerText,
  });

  final bool dark;
  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Divider(
            color: dark ? myColors.darkGrey : myColors.grey,
            thickness: 0.5,
            indent: 60,
            endIndent: 5,
          ),
        ),
    
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
    
        Flexible(
          child: Divider(
            color: dark ? myColors.darkGrey : myColors.grey,
            thickness: 0.5,
            indent: 5,
            endIndent: 60,
          ),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}