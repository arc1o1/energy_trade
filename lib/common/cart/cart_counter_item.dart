import 'package:energy_trade/features/shop/02_cart/cart.dart';
import 'package:energy_trade/features/shop/02_cart/controller/cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:energy_trade/utils/constants/colors.dart';

class CartCounterIcon extends StatelessWidget {
  const CartCounterIcon({
    super.key,
    required this.iconColor,
  });

  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    // controller
    // ignore: unused_local_variable
    final cartController = Get.put(CartController());

    // stack
    return Stack(
      children: [
        IconButton(
          onPressed: () => Get.to(() => const CartScreen()),
          icon: Icon(
            Icons.shopping_cart_outlined,
            color: iconColor,
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            width: 17,
            height: 17,
            decoration: BoxDecoration(
              color: CcColors.secondary,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Obx(
                () => Text(
                  cartController.cartItemsNo.value.toString(),
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                      color: CcColors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 11),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
