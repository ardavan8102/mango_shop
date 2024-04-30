import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/features/authentication/screens/signup/privacy_checkbox.dart';
import 'package:shop/features/authentication/screens/signup/verify_email.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_strings.dart';

class signUpForm extends StatelessWidget {
  const signUpForm({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: [
              // First Name
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: allTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                  expands: false,
                ),
              ),
    
              const SizedBox(width: mySizes.spaceBetweenInputFields),
    
              // Last Name
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    labelText: allTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                  expands: false,
                ),
              ),
            ],
          ),
    
          const SizedBox(height: mySizes.spaceBetweenInputFields),
    
          // Username
          TextFormField(
            decoration: const InputDecoration(
              labelText: allTexts.userName,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
            expands: false,
          ),
    
          const SizedBox(height: mySizes.spaceBetweenInputFields),
    
          // Email
          TextFormField(
            decoration: const InputDecoration(
              labelText: allTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
            keyboardType: TextInputType.emailAddress,
          ),
    
          const SizedBox(height: mySizes.spaceBetweenInputFields),
    
          // Phone Number
          TextFormField(
            decoration: const InputDecoration(
              labelText: allTexts.phoneNumber,
              prefixIcon: Icon(Iconsax.call),
            ),
            keyboardType: TextInputType.phone,
          ),
    
          const SizedBox(height: mySizes.spaceBetweenInputFields),
    
          // Password
          TextFormField(
            decoration: const InputDecoration(
              labelText: allTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffix: Icon(Iconsax.eye_slash),
            ),
            obscureText: true,
          ),
    
          const SizedBox(height: mySizes.spaceBetweenInputFields),
    
          // Terms and Privacy Checkbox
          privacyCheckbox(dark: dark),
    
          const SizedBox(height: mySizes.spaceBetweenSections),
    
          // Sigup Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()), 
              child: const Text(allTexts.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}