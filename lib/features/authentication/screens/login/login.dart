import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop/common/styles/spacing_styles.dart';
import 'package:shop/common/widgets/login_page/social_buttons.dart';
import 'package:shop/features/authentication/screens/login/widgets/login_form.dart';
import 'package:shop/features/authentication/screens/login/widgets/login_header.dart';
import 'package:shop/common/widgets/login_page/form_divider.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_strings.dart';
import 'package:shop/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = myHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: SpacingStyles.paddingWithAppbarHeight,
          child: Column(
            children: [
              // Header => Logo, Title, SubTitle
              loginHeader(dark: dark),


              // Form
              loginForm(),

              // Divider
              formDivider(
                dark: dark,
                dividerText: allTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(height: mySizes.spaceBetweenItems),

              // Footer
              socialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}