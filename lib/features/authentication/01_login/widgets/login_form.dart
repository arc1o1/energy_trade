import 'package:energy_trade/features/authentication/01_login/controller/login_controller.dart';
import 'package:energy_trade/features/authentication/01_login/forgot_password.dart';
import 'package:energy_trade/features/authentication/02_signup/signup.dart';
import 'package:energy_trade/features/shop/01_home/home.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:energy_trade/utils/constants/text_strings.dart';
import 'package:energy_trade/utils/helpers/helper_functions.dart';
import 'package:energy_trade/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    // controller
    final loginController = Get.put(LoginController());

    // login form
    return Form(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // email or username field
            TextFormField(
              controller: loginController.email,
              validator: (value) => CcValidator.validateEmail(value),
              decoration: InputDecoration(
                suffixIcon: const Icon(Icons.email_rounded),
                labelText: CcTexts.email,
                hintText: 'eg. john11@yahoo.com',
                labelStyle: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(fontWeight: FontWeight.w600),
                hintStyle: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
            ),

            const SizedBox(height: CcSizes.spaceBtnInputFields),

            // password
            Obx(
              () => TextFormField(
                controller: loginController.password,
                validator: (value) =>
                    CcValidator.validateEmptyText('Password', value),
                obscureText: loginController.hidePassword.value,
                decoration: InputDecoration(
                  suffixIcon: IconButton(
                      onPressed: () => loginController.hidePassword.value =
                          !loginController.hidePassword.value,
                      icon: Icon(loginController.hidePassword.value
                          ? Icons.visibility_off_rounded
                          : Icons.visibility_rounded)),
                  labelText: CcTexts.password,
                  hintText: 'Enter your password',
                  labelStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                  hintStyle: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(fontWeight: FontWeight.w500),
                ),
              ),
            ),

            // remember me and forgot password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // remember me
                Row(
                  children: [
                    Obx(
                      () => Checkbox(
                        value: loginController.rememberMe.value,
                        onChanged: (value) => loginController.rememberMe.value =
                            !loginController.rememberMe.value,
                      ),
                    ),
                    Text(
                      CcTexts.rememberMe,
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontWeight: FontWeight.w600, color: CcColors.black),
                    ),
                  ],
                ),

                // forgot password
                TextButton(
                  onPressed: () => Get.to(() => const ForgotPasswordScreen()),
                  child: Text(
                    CcTexts.forgotPassword,
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: Colors.blue.shade700),
                  ),
                )
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            // sign in button
            SizedBox(
              width: CcHelperFunctions.screenWidth() / 1.5,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: CcColors.primary,
                    surfaceTintColor: Colors.transparent,
                    elevation: 0,
                    shadowColor: Colors.transparent),
                onPressed: () => Get.to(() => const HomeScreen()),
                child: const Text(CcTexts.signIn),
              ),
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            // signup button
            SizedBox(
              width: CcHelperFunctions.screenWidth() / 1.5,
              height: 60,
              child: OutlinedButton(
                onPressed: () => Get.to(() => const SignupScreen()),
                child: Text(
                  CcTexts.createAccount,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        fontWeight: FontWeight.w600,
                        color: CcColors.black,
                        fontSize: 15,
                      ),
                ),
              ),
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_2),
          ],
        ),
      ),
    );
  }
}
