import 'package:energy_trade/features/shop/01_home/buying.dart';
import 'package:energy_trade/features/shop/01_home/widgets/selling_tab.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuyingTab extends StatelessWidget {
  const BuyingTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    // title
                    Text(
                      "Buying Clean Energy",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: const Color(0xFF0D98BA),
                                fontSize: 20,
                              ),
                    ),

                    const SizedBox(height: CcSizes.spaceBtnItems_1),

                    // subtitle
                    Text(
                      "Kindly Choose Energy Type That You Want To Buy!",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1 * 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // solar energy category
                EnergyClassificationMaterialWidget(
                  image: CcImages.solar,
                  categoryText: "Solar",
                  onTap: () => Get.to(
                    () => const BuyingScreen(title: "Solar"),
                  ),
                ),

                // geothermal energy category
                EnergyClassificationMaterialWidget(
                  image: CcImages.geo,
                  categoryText: "Geothermal",
                  onTap: () => Get.to(
                    () => const BuyingScreen(title: "Geothermal"),
                  ),
                ),
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1 * 2),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // battery power
                EnergyClassificationMaterialWidget(
                  image: CcImages.battery,
                  categoryText: "Battery",
                  onTap: () => Get.to(
                    () => const BuyingScreen(title: "Battery"),
                  ),
                ),

                // wind power
                EnergyClassificationMaterialWidget(
                  image: CcImages.wind,
                  categoryText: "Wind",
                  onTap: () => Get.to(
                    () => const BuyingScreen(title: "Wind"),
                  ),
                ),
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            // // others
            // EnergyClassificationMaterialWidget(
            //   image: CcImages.other1,
            //   categoryText: "Others",
            //   onTap: () => Get.to(
            //     () => BuyingScreen(title: "Others"),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
