import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shop/features/authentication/screens/password_configuration/forgot_password.dart';
import 'package:shop/features/authentication/screens/signup/signup.dart';
import 'package:shop/navigation_menu.dart';
import 'package:shop/utils/constants/sizes.dart';
import 'package:shop/utils/constants/text_strings.dart';

class loginForm extends StatelessWidget {
  const loginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: mySizes.spaceBetweenSections),
        child: Column(
          children: [
            // Email
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: allTexts.email,
              ),
              keyboardType: TextInputType.emailAddress,
            ),
        
            const SizedBox(height: mySizes.spaceBetweenInputFields),
        
            // Password
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: allTexts.password,
                suffix: Icon(Iconsax.eye_slash),
              ),
            ),
        
            const SizedBox(height: mySizes.spaceBetweenInputFields / 2),
        
            // Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Remember Me
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value){}),
                    const Text(allTexts.rememberMe),
                  ],
                ),
        
                // Forgot Password
                TextButton(
                  onPressed: () => Get.to(() => const ForgotPassword()), 
                  child: const Text(allTexts.forgotPassowrd),
                ),
              ],
            ),
        
            const SizedBox(height: mySizes.spaceBetweenSections),
        
            // Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const NavigationMenu()),
                child: Text(allTexts.signIn),
              ),
            ),
            const SizedBox(height: mySizes.spaceBetweenItems),
        
            // Create Account Button
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: Text(allTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}