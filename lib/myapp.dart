import 'package:energy_trade/common/routes/app_routes.dart';
import 'package:energy_trade/features/authentication/01_login/login.dart';
import 'package:energy_trade/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  final bool onboarding;
  const MyApp({super.key, this.onboarding = false});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      theme: CcTheme.lightTheme,
      home: const LoginScreen(),
      getPages: AppRoutes.pages,
    );
  }
}
