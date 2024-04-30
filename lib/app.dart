import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:shop/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:shop/utils/theme/theme.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system, // Detect Theme of the device
      theme: myAppTheme.lightTheme,
      darkTheme: myAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}