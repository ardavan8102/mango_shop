import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/widgets/login_page/form_divider.dart';
import 'package:shop/common/widgets/login_page/social_buttons.dart';
import 'package:shop/features/authentication/screens/signup/signup_form.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_strings.dart';
import 'package:shop/utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = myHelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(mySizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              Text(
                allTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),

              const SizedBox(height: mySizes.spaceBetweenSections),

              // Form
              signUpForm(dark: dark),

              const SizedBox(height: mySizes.spaceBetweenItems),

              // Divider
              formDivider(dark: dark, dividerText: allTexts.orSignUpWith.capitalize!),
              const SizedBox(height: mySizes.spaceBetweenItems),

              // Social Buttons
              const socialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}