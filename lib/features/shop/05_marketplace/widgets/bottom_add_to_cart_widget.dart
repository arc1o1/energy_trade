import 'package:energy_trade/features/shop/06_checkout/checkout.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    // controller

    // container
    return Material(
      elevation: 5,
      color: Colors.grey.shade200,
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 70,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // shall i use the add remove button instead of this or not.....
            // depends on how the app reacts
            Row(
              children: [
                // minus from cart
                Material(
                  elevation: 5,
                  borderRadius: BorderRadius.circular(CcSizes.cardRadiusXs),
                  color: CcColors.grey,
                  child: Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(CcSizes.cardRadiusXs),
                        topRight: Radius.circular(CcSizes.cardRadiusXs),
                        bottomRight: Radius.circular(CcSizes.cardRadiusXs),
                        bottomLeft: Radius.circular(CcSizes.cardRadiusXs),
                      ),
                    ),
                    child: const SizedBox(
                      width: CcSizes.iconLg,
                      height: CcSizes.iconLg,
                      child: Center(
                        child: Icon(Iconsax.minus, color: CcColors.black),
                      ),
                    ),
                  ),
                ),

                // item count
                const SizedBox(width: CcSizes.spaceBtnItems_1),
                Text("2 kWh", style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(width: CcSizes.spaceBtnItems_1),

                // add to cart icon
                InkWell(
                  onTap: () {},
                  child: Material(
                    elevation: 5,
                    color: CcColors.dark,
                    borderRadius: BorderRadius.circular(CcSizes.cardRadiusXs),
                    child: Container(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(CcSizes.cardRadiusXs),
                          topRight: Radius.circular(CcSizes.cardRadiusXs),
                          bottomRight: Radius.circular(CcSizes.cardRadiusXs),
                          bottomLeft: Radius.circular(CcSizes.cardRadiusXs),
                        ),
                      ),
                      child: const SizedBox(
                        width: CcSizes.iconLg,
                        height: CcSizes.iconLg,
                        child: Center(
                          child: Icon(Iconsax.add, color: CcColors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // see if an error results in this functional block
            SizedBox(
              width: 100,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const CheckoutScreen()),
                style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(CcSizes.md),
                    backgroundColor: Colors.blue,
                    side: const BorderSide(color: Colors.blue)),
                child: Center(
                  child: Text(
                    "Buy",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: CcColors.white,
                        ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
