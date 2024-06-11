import 'package:energy_trade/common/texts/section_heading.dart';
import 'package:energy_trade/features/shop/05_marketplace/all_products_buy_screen.dart';
import 'package:energy_trade/features/shop/05_marketplace/widgets/marketplace_horizotal_item.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BuyingScreen extends StatelessWidget {
  const BuyingScreen({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    // var

    var containerColor = Colors.blue;
    var textColor = Colors.white;
    var energyClass = "SOLAR";
    var number = 0;

    if (title == "Biomass") {
      containerColor = Colors.green;
      textColor = Colors.white;
      energyClass = "BIOMASS";
      number = 1;
    } else if (title == "Wind") {
      containerColor = Colors.lightGreen;
      textColor = Colors.white;
      energyClass = "WIND";
      number = 2;
    }

    // scaffold
    return Scaffold(
      backgroundColor: CcColors.secondary,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.green,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
                fontSize: 21,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // section heading
              CcSectionHeading(
                title: "Helios Power Solution",
                showActionButton: true,
                onPressed: () => Get.to(() => AllProductsScreen(
                      title: "Helios Power Solution",
                      number: number,
                    )),
              ),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              // listview
              ListView.separated(
                itemCount: 2,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (content, index) =>
                    const SizedBox(height: CcSizes.spaceBtnItems_1),
                itemBuilder: (context, index) =>
                    // content
                    MarketHorizontalItems(
                  textColor: textColor,
                  containerColor: containerColor,
                  energyClass: energyClass,
                ),
              ),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              // section heading
              CcSectionHeading(
                title: "Local Power Solution",
                showActionButton: true,
                onPressed: () => Get.to(() => AllProductsScreen(
                      title: "Local Power Solution",
                      number: number,
                    )),
              ),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              // listview
              ListView.separated(
                itemCount: 2,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (content, index) =>
                    const SizedBox(height: CcSizes.spaceBtnItems_1),
                itemBuilder: (context, index) =>
                    // content
                    MarketHorizontalItems(
                  textColor: textColor,
                  containerColor: containerColor,
                  energyClass: energyClass,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
