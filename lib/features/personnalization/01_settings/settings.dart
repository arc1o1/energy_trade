import 'package:energy_trade/common/drawer/drawer.dart';
import 'package:energy_trade/common/list_tile/settings_menu_tiles.dart';
import 'package:energy_trade/common/list_tile/user_profile_tile.dart';
import 'package:energy_trade/common/texts/section_heading.dart';
import 'package:energy_trade/features/personnalization/02_profile/profile.dart';
import 'package:energy_trade/features/personnalization/03_wallet/wallet.dart';
import 'package:energy_trade/features/personnalization/04_history/history.dart';
import 'package:energy_trade/features/shop/02_analytics/analytics.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CcColors.secondary,
      appBar: AppBar(
        backgroundColor: CcColors.primary,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          "Settings",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade100,
              ),
        ),
      ),
      drawer: const CcDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Column(
                children: [
                  // user profile card
                  CcUserProfileTile(
                    onPressed: () => Get.to(() => const ProfileScreen()),
                  ),

                  const SizedBox(height: CcSizes.spaceBtnSections / 2),
                ],
              ),

              // body
              Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    // account setting
                    const CcSectionHeading(
                        title: 'Account', showActionButton: false),

                    const Divider(),

                    // const SizedBox(height: CcSizes.spaceBtnItems_1 / 2),

                    CcSettingsMenuTile(
                      icon: Icons.analytics,
                      title: 'Analytics',
                      onTap: () => Get.to(() => const AnalyticsScreen()),
                    ),

                    CcSettingsMenuTile(
                      icon: Icons.wallet_outlined,
                      title: 'Wallet',
                      onTap: () => Get.to(() => const WalletScreen()),
                    ),

                    CcSettingsMenuTile(
                      icon: Icons.fingerprint_outlined,
                      title: 'Touch ID',
                      onTap: () {},
                    ),

                    CcSettingsMenuTile(
                      icon: Icons.lock_outlined,
                      title: 'Two Factor Authentication',
                      onTap: () {},
                    ),
                    CcSettingsMenuTile(
                      icon: Icons.history_outlined,
                      title: 'History',
                      onTap: () => Get.to(() => const HistoryScreen()),
                    ),

                    const SizedBox(height: CcSizes.spaceBtnSections),

                    // More setting
                    const CcSectionHeading(
                        title: 'Help', showActionButton: false),

                    const Divider(),

                    const SizedBox(height: CcSizes.spaceBtnItems_1),

                    CcSettingsMenuTile(
                      icon: Icons.smartphone_outlined,
                      title: 'Contacts',
                      onTap: () {},
                    ),

                    CcSettingsMenuTile(
                      icon: Icons.miscellaneous_services_outlined,
                      title: 'Terms of Services',
                      onTap: () {},
                    ),

                    CcSettingsMenuTile(
                      icon: Icons.privacy_tip,
                      title: 'Privacy Policy',
                      onTap: () {},
                    ),

                    const SizedBox(height: CcSizes.spaceBtnItems_1),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
