import 'package:energy_trade/features/shop/02_cart/cart.dart';
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
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      color: CcColors.dark,
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
                        child: Icon(Iconsax.minus, color: CcColors.white),
                      ),
                    ),
                  ),
                ),

                // item count
                const SizedBox(width: CcSizes.spaceBtnItems_1),
                Text("2", style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(width: CcSizes.spaceBtnItems_1),

                // add to cart icon
                InkWell(
                  onTap: () {},
                  child: Container(
                    decoration: const BoxDecoration(
                      color: CcColors.dark,
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
              ],
            ),

            // see if an error results in this functional block
            ElevatedButton(
              onPressed: () {
                Get.to(() => const CartScreen());
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(CcSizes.md),
                  backgroundColor: CcColors.black,
                  side: const BorderSide(color: CcColors.black)),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  // cart icon
                  const Icon(Icons.shopping_cart_checkout, size: 25),

                  const SizedBox(width: CcSizes.spaceBtnItems_1 / 2),

                  Text(
                    "cart",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: CcColors.white,
                        ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
