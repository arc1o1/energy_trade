import 'package:energy_trade/features/authentication/01_login/login.dart';
import 'package:energy_trade/features/authentication/03_validate_email/controller/validate_email_controller.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:energy_trade/utils/constants/text_strings.dart';
import 'package:energy_trade/utils/helpers/helper_functions.dart';

class ValidateEmail extends StatelessWidget {
  const ValidateEmail({super.key, this.email});

  final String? email;

  @override
  Widget build(BuildContext context) {
    // controller
    // ignore: unused_local_variable
    final controller = Get.put(VerificationEmailController());

    // content
    return Scaffold(
      backgroundColor: CcColors.secondary,
      appBar: AppBar(
        backgroundColor: CcColors.primary,
        iconTheme: const IconThemeData(color: Colors.white),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Get.to(() => const LoginScreen()),
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(CcSizes.defaultSpace),
          child: Column(
            children: [
              const SizedBox(height: CcSizes.spaceBtnSections),

              Icon(Icons.mark_email_unread_rounded,
                  size: CcHelperFunctions.screenHeight() / 5),

              // title and subtitle
              Text(
                CcTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: CcSizes.spaceBtnItems_1,
              ),

              Text(
                email ?? 'pity@yahoo.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              Text(
                CcTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: CcSizes.spaceBtnSections),

              // button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  child: const Text(CcTexts.tContinue),
                  onPressed: () => Get.offAll(() => const LoginScreen()),
                ),
              ),

              const SizedBox(
                height: CcSizes.spaceBtnItems_1,
              ),

              SizedBox(
                width: double.infinity,
                child: TextButton(
                  child: const Text(
                    CcTexts.resendEmail,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
