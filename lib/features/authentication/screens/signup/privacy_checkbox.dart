import 'package:flutter/material.dart';
import 'package:shop/utils/constants/colors.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_strings.dart';

class privacyCheckbox extends StatelessWidget {
  const privacyCheckbox({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(
            value: true, 
            onChanged: (value){}
          ),
        ),
        const SizedBox(height: mySizes.spaceBetweenItems),
        
        Text.rich(
          TextSpan(
            children: [
              TextSpan(text: ' ${allTexts.iAgreeTo} ', style: Theme.of(context).textTheme.bodySmall),
              TextSpan(text: '${allTexts.privacyPolicy} ', style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark ? myColors.white : myColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: dark ? myColors.white : myColors.primary,
              )),
            ],
          ),
        ),
      ],
    );
  }
}