import 'package:energy_trade/common/images/circular_image.dart';
import 'package:energy_trade/features/personnalization/01_settings/settings.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeaderDrawer extends StatelessWidget {
  const HeaderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade400,
      width: double.infinity,
      height: 210,
      child: InkWell(
        onTap: () => Get.to(() => const SettingsScreen()),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CcCircularImage(
              height: 100,
              width: 100,
              image: CcImages.user2,
            ),
            const SizedBox(height: CcSizes.spaceBtnItems_2),
            Text(
              "Alphonce Alfred",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.grey.shade100, fontSize: 20),
            ),
            const SizedBox(height: CcSizes.spaceBtnItems_2 / 2),
            Text(
              "alphoncealfred11@gmail.com",
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.grey.shade100, fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}
