import 'package:energy_trade/common/routes/routes.dart';
// import 'package:energy_trade/features/personnalization/01_settings/settings.dart';
// import 'package:energy_trade/features/personnalization/03_wallet/wallet.dart';
// import 'package:energy_trade/features/shop/01_home/home.dart';
// import 'package:energy_trade/features/shop/02_cart/cart.dart';
// import 'package:energy_trade/features/shop/03_reviews/reviews.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({super.key});

  @override
  Widget build(BuildContext context) {
    // container
    return Container(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        children: [
          // list of the menu items of the drawer

          menuItem(
              "Home",
              Icons.home_rounded,
              () => navigate(0),
              Get.currentRoute == CcRoutes.home
                  ? Colors.green
                  : Colors.transparent,
              Get.currentRoute == CcRoutes.home ? Colors.white : Colors.black),

          // menuItem(
          //     "Store",
          //     Icons.store,
          //     () => navigate(1),
          //     Get.currentRoute == CcRoutes.store
          //         ? Colors.green
          //         : Colors.transparent,
          //     Get.currentRoute == CcRoutes.store ? Colors.white : Colors.black),

          menuItem(
              "Wallet",
              Icons.wallet,
              () => navigate(2),
              Get.currentRoute == CcRoutes.wallet
                  ? Colors.green
                  : Colors.transparent,
              Get.currentRoute == CcRoutes.wallet
                  ? Colors.white
                  : Colors.black),

          menuItem(
              "Cart",
              Icons.shopping_cart_rounded,
              () => navigate(3),
              Get.currentRoute == CcRoutes.cart
                  ? Colors.green
                  : Colors.transparent,
              Get.currentRoute == CcRoutes.cart ? Colors.white : Colors.black),

          // menuItem(
          //     "Notifications",
          //     Icons.notifications_rounded,
          //     () => navigate(4),
          //     Get.currentRoute == CcRoutes.notifications
          //         ? Colors.green
          //         : Colors.transparent,
          //     Get.currentRoute == CcRoutes.notifications
          //         ? Colors.white
          //         : Colors.black),

          menuItem(
              "Reviews",
              Icons.reviews,
              () => navigate(5),
              Get.currentRoute == CcRoutes.reviews
                  ? Colors.green
                  : Colors.transparent,
              Get.currentRoute == CcRoutes.reviews
                  ? Colors.white
                  : Colors.black),

          menuItem(
              "Settings",
              Icons.settings_rounded,
              () => navigate(6),
              Get.currentRoute == CcRoutes.settings
                  ? Colors.green
                  : Colors.transparent,
              Get.currentRoute == CcRoutes.settings
                  ? Colors.white
                  : Colors.black),
        ],
      ),
    );
  }

  Widget menuItem(String title, IconData icon, Function() onTap, Color color,
      Color textColor) {
    return Material(
      color: color,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Expanded(
                child: Icon(
                  icon,
                  size: 20,
                  color: Colors.black,
                ),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  title,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  navigate(int index) {
    if (index == 0) {
      Get.toNamed(CcRoutes.home);
    } else if (index == 1) {
      Get.toNamed(CcRoutes.store);
    } else if (index == 2) {
      Get.toNamed(CcRoutes.wallet);
    } else if (index == 3) {
      Get.toNamed(CcRoutes.cart);
    } else if (index == 4) {
      Get.toNamed(CcRoutes.notifications);
    } else if (index == 5) {
      Get.toNamed(CcRoutes.reviews);
    } else if (index == 6) {
      Get.toNamed(CcRoutes.settings);
    }
  }
}
