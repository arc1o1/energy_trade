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
        centerTitle: true,
        backgroundColor: CcColors.primary,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "New Account",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade100,
              ),
        ),
      ),
      backgroundColor: CcColors.secondary,
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            children: [
              SignupForm(),

              // divider
              FormDivider(dividerText: "Or Sign In With"),

              SizedBox(height: CcSizes.spaceBtnSections / 2),

              // social button
              SocialButton(),
            ],
          ),
        ),
      ),
    );
  }
}
