import 'package:energy_trade/features/authentication/02_signup/controller/signup_controller.dart';
import 'package:get/get.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsCheckBox extends StatelessWidget {
  const TermsAndConditionsCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // instantiate controller
    final signupController = SignupController.instance;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // remember me
        Row(
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: Obx(
                () => Checkbox(
                  value: signupController.privacyPolicy.value,
                  onChanged: (value) => signupController.privacyPolicy.value =
                      !signupController.privacyPolicy.value,
                ),
              ),
            ),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                  text: '${CcTexts.iAgreeTo} ',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.w600, color: CcColors.black),
                ),
                TextSpan(
                  text: CcTexts.privacyPolicy,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w800,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                      ),
                ),
                TextSpan(
                  text: ' and ',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      fontWeight: FontWeight.w600, color: CcColors.black),
                ),
                TextSpan(
                  text: CcTexts.termsOfUse,
                  style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontWeight: FontWeight.w800,
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.blue,
                      ),
                ),
              ]),
            ),
          ],
        ),
      ],
    );
  }
}
