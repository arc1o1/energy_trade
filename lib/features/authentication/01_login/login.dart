import 'package:energy_trade/common/login_signup/form_divider.dart';
import 'package:energy_trade/common/login_signup/social_buttons.dart';
import 'package:energy_trade/features/authentication/01_login/widgets/login_form.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:energy_trade/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = CcHelperFunctions.screenHeight();
    // final screenWidth = CcHelperFunctions.screenWidth();
    return Scaffold(
      backgroundColor: CcColors.secondary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: screenHeight / 10),

            // lock icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock_rounded,
                  size: screenHeight / 7,
                  color: CcColors.primary,
                ),
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1 / 2),

            // welcoming Text
            Text(
              "Welcome Back!",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: CcColors.primary,
                  fontWeight: FontWeight.bold,
                  fontSize: 24),
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_2 / 3),

            Text(
              "Please Login To Continue",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(fontSize: 14),
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_2),

            const LoginForm(),

            const FormDivider(dividerText: "Or Sign In With"),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            const SocialButton()
          ],
        ),
      ),
    );
  }
}
