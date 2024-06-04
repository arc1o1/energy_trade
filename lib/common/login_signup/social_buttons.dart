// import 'package:energy_trade/features/authentication/01_login/controller/login_controller.dart';
// import 'package:get/get.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // controller instantiation
    // final controller = Get.put(LoginController());

    // buttons
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // 01
        // google sign in button
        Container(
          padding: const EdgeInsets.all(4.5),
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: CcColors.darkGrey),
            borderRadius: BorderRadius.circular(16),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: CcSizes.iconLg,
              height: CcSizes.iconLg,
              image: AssetImage(CcImages.google),
            ),
          ),
        ),

        const SizedBox(width: CcSizes.spaceBtnSections),

        // 02
        // apple sign in button
        Container(
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: CcColors.darkGrey),
            borderRadius: BorderRadius.circular(16),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: CcSizes.iconXl,
              height: CcSizes.iconXl,
              image: AssetImage(CcImages.apple),
            ),
          ),
        ),
      ],
    );
  }
}
