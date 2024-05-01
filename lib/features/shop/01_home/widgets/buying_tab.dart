import 'package:energy_trade/common/images/circular_image.dart';
import 'package:energy_trade/features/shop/01_home/buying.dart';
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
                Expanded(
                  flex: 4,
                  child: EnergyClassificationMaterialWidget(
                    image: CcImages.solar,
                    categoryText: "Solar",
                    onTap: () => Get.to(
                      () => const BuyingScreen(title: "Solar"),
                    ),
                  ),
                ),

                const SizedBox(width: 5),

                // geothermal energy category
                Expanded(
                  flex: 5,
                  child: EnergyClassificationMaterialWidget(
                    image: CcImages.geo,
                    categoryText: "Geothermal",
                    onTap: () => Get.to(
                      () => const BuyingScreen(title: "Geothermal"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: CcSizes.spaceBtnItems_1),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // battery power
                Expanded(
                  flex: 5,
                  child: EnergyClassificationMaterialWidget(
                    image: CcImages.battery,
                    categoryText: "Battery",
                    onTap: () => Get.to(
                      () => const BuyingScreen(title: "Battery"),
                    ),
                  ),
                ),

                const SizedBox(width: 5),

                // wind power
                Expanded(
                  flex: 4,
                  child: EnergyClassificationMaterialWidget(
                    image: CcImages.wind,
                    categoryText: "Wind",
                    onTap: () => Get.to(
                      () => const BuyingScreen(title: "Wind"),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: CcSizes.spaceBtnItems_1 * 2),
          ],
        ),
      ),
    );
  }
}

class EnergyClassificationMaterialWidget extends StatelessWidget {
  const EnergyClassificationMaterialWidget({
    super.key,
    required this.categoryText,
    required this.image,
    this.onTap,
  });

  final String image;
  final String categoryText;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Material(
        elevation: 5,
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 90,
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // image
              CcCircularImage(
                image: image,
                backgroundColor: Colors.green,
                width: 50,
                height: 50,
                borderRadius: 100,
              ),

              const SizedBox(width: CcSizes.spaceBtnItems_1 / 2),

              // text description
              Text(
                categoryText,
                style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.black,
                      fontSize: 18,
                    ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
