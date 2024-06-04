import 'package:energy_trade/common/images/rounded_image.dart';
import 'package:energy_trade/features/shop/05_marketplace/marketplace_item_detail.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:energy_trade/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MarketHorizontalItems extends StatelessWidget {
  const MarketHorizontalItems({
    super.key,
    this.containerColor = Colors.blue,
    this.energyClass = "SOLAR",
    this.textColor = Colors.white,
  });

  final Color containerColor, textColor;
  final String energyClass;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(() => const MarketplaceItemDetail()),
      child: Material(
        elevation: 5,
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.all(5),
          width: CcDeviceUtils.getScreenWidth(context),
          child: Row(
            children: [
              Container(
                  width: 95,
                  height: 95,
                  padding: EdgeInsets.zero,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: const CcRoundedImage(imageUrl: CcImages.company1)),

              const SizedBox(width: CcSizes.spaceBtnItems_2),

              // category: can be business, analysis, insights, education etc
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 20,
                        width: 100,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                            color: containerColor,
                            borderRadius: BorderRadius.circular(3)),
                        child: Center(
                          child: Text(
                            energyClass,
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: textColor, fontSize: 13),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: CcSizes.spaceBtnItems_2 / 2),

                  // company
                  Row(
                    children: [
                      // title
                      Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.zero,
                        width: 50,
                        child: Text(
                          "Supplier",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontSize: 13),
                          softWrap: true,
                          maxLines: 3,
                        ),
                      ),

                      // subtitle
                      Text(
                        ":HE Power Solution",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 13, color: Colors.grey),
                        softWrap: true,
                        maxLines: 3,
                      ),
                    ],
                  ),

                  const SizedBox(height: CcSizes.spaceBtnItems_2 / 3),

                  // terms
                  Row(
                    children: [
                      // title
                      Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.zero,
                        width: 50,
                        child: Text(
                          "Status",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontSize: 13),
                          softWrap: true,
                          maxLines: 3,
                        ),
                      ),

                      // subtitle
                      Text(
                        ":Available, 100kWh",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 13, color: Colors.grey),
                        softWrap: true,
                        maxLines: 3,
                      ),
                    ],
                  ),

                  const SizedBox(height: CcSizes.spaceBtnItems_2 / 3),

                  // price
                  Row(
                    children: [
                      // title
                      Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.zero,
                        width: 50,
                        child: Text(
                          "3000/=",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontSize: 15),
                          softWrap: true,
                          maxLines: 3,
                        ),
                      ),

                      // subtitle
                      Text(
                        " per kWh",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 13, color: Colors.grey),
                        softWrap: true,
                        maxLines: 3,
                      ),
                    ],
                  ),

                  const SizedBox(height: CcSizes.spaceBtnItems_2 / 3),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
