import 'package:energy_trade/common/images/circular_image.dart';
import 'package:energy_trade/common/texts/section_heading.dart';
import 'package:energy_trade/features/personnalization/02_profile/widgets/change_name.dart';
import 'package:energy_trade/features/personnalization/02_profile/widgets/change_phone_number.dart';
import 'package:energy_trade/features/personnalization/02_profile/widgets/profile_menu.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CcColors.secondary,
      // body
      appBar: AppBar(
        backgroundColor: Colors.green,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
              ),
        ),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // profile picture
              SizedBox(
                width: 200,
                child: Column(
                  children: [
                    CcCircularImage(
                      backgroundColor: Colors.green.shade600,
                      image: CcImages.user2,
                      width: 100,
                      height: 100,
                    ),
                    TextButton(
                        onPressed: () {},
                        child: const Text("Change Profile Picture"))
                  ],
                ),
              ),

              // divider
              const SizedBox(height: CcSizes.spaceBtnItems_2 / 2),
              const Divider(),
              const SizedBox(height: CcSizes.spaceBtnItems_2),

              // section heading
              const CcSectionHeading(
                  title: "Profile Information", showActionButton: false),

              const SizedBox(height: CcSizes.spaceBtnItems_2),

              // user details
              CcProfileMenu(
                  onPressed: () => Get.to(() => const ChangeName()),
                  title: "Name:",
                  value: "Alphonce Alfred"),
              CcProfileMenu(
                  onPressed: () {},
                  title: "Username:",
                  value: "Alphonce Alfred"),

              const SizedBox(height: CcSizes.spaceBtnItems_2),
              const Divider(),
              const SizedBox(height: CcSizes.spaceBtnItems_2),

              // section heading
              const CcSectionHeading(
                  title: "Personal Information", showActionButton: false),

              const SizedBox(height: CcSizes.spaceBtnItems_2),

              // personal information
              CcProfileMenu(
                  onPressed: () {},
                  title: "User ID:",
                  value: "c3457hduhe78378384",
                  icon: Icons.copy),
              CcProfileMenu(
                  onPressed: () {},
                  title: "E-mail:",
                  value: "alphoncealfred@gmail.com"),
              CcProfileMenu(
                  onPressed: () => Get.to(() => const ChangePhoneNumber()),
                  title: "Phone Number:",
                  value: "0789000000"),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              const Divider(color: Colors.grey),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              SizedBox(
                width: double.infinity,
                height: 60,
                child: OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Logout",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 15,
                        ),
                  ),
                ),
              ),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              Center(
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
