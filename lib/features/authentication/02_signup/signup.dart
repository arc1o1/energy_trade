import 'package:energy_trade/common/login_signup/form_divider.dart';
import 'package:energy_trade/common/login_signup/social_buttons.dart';
import 'package:energy_trade/features/authentication/02_signup/widgets/signup_form.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CcColors.primary,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: CcColors.secondary,
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              const SizedBox(height: 5),
              // title
              Text(
                "New Account",
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: CcColors.primary,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
              ),

              const SizedBox(height: 10),

              const SignupForm(),

              // const SizedBox(height: CcSizes.spaceBtnSections),

              // divider
              const FormDivider(dividerText: "Or Sign In With"),

              const SizedBox(height: CcSizes.spaceBtnSections / 2),

              // social button
              const SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
