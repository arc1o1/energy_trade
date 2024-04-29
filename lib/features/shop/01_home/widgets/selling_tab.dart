import 'package:energy_trade/common/images/rounded_image.dart';
import 'package:energy_trade/features/shop/01_home/selling.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SellingTab extends StatelessWidget {
  const SellingTab({
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
                      "Selling Clean Energy",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: const Color(0xFF0D98BA),
                                fontSize: 20,
                              ),
                    ),

                    const SizedBox(height: CcSizes.spaceBtnItems_1),

                    // subtitle
                    Text(
                      "Kindly Choose Energy Type That You Want To Sell!",
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
                    () => const SellingScreen(title: "Solar"),
                  ),
                ),

                // geothermal energy category
                EnergyClassificationMaterialWidget(
                  image: CcImages.geo,
                  categoryText: "Geothermal",
                  onTap: () => Get.to(
                    () => const SellingScreen(title: "Geothermal"),
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
                    () => const SellingScreen(title: "Battery"),
                  ),
                ),

                // wind power
                EnergyClassificationMaterialWidget(
                  image: CcImages.wind,
                  categoryText: "Wind",
                  onTap: () => Get.to(
                    () => const SellingScreen(title: "Wind"),
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
            //     () => const SellingScreen(title: "Others"),
            //   ),
            // ),
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
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // image
              CcRoundedImage(
                imageUrl: image,
                backgroundColor: Colors.transparent,
                width: 100,
                height: 100,
              ),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

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