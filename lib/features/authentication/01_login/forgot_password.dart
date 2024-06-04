import 'package:energy_trade/features/authentication/01_login/controller/forgot_password_controller.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:energy_trade/utils/constants/text_strings.dart';
import 'package:energy_trade/utils/helpers/helper_functions.dart';
import 'package:energy_trade/utils/validators/validator.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // controller
    final forgotPasswordController = Get.put(ForgotPasswordController());
    return Scaffold(
      backgroundColor: CcColors.secondary,
      appBar: AppBar(
        backgroundColor: CcColors.primary,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),

        // heading
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  CcTexts.forgotPasswordTitle,
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: 25),
                ),
                const SizedBox(height: CcSizes.spaceBtnItems_1),
                Text(
                  "That's okay. It happens sometimes!",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: 15),
                ),
                Text(
                  "Click on the button below to reset your password.",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: 15),
                ),
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnSections * 2),

            // textfield
            Form(
              key: forgotPasswordController.forgotPasswordFormKey,
              child: TextFormField(
                controller: forgotPasswordController.email,
                validator: CcValidator.validateEmail,
                decoration: const InputDecoration(
                  labelText: CcTexts.email,
                  prefixIcon: Icon(Icons.email_rounded),
                ),
              ),
            ),

            const SizedBox(height: CcSizes.spaceBtnSections * 2),

            // submit button
            SizedBox(
              width: CcHelperFunctions.screenWidth() / 1.5,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Submit"),
              ),
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),
          ],
        ),
      ),
    );
  }
}
