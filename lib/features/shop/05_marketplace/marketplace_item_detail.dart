import 'package:energy_trade/common/appbar/appbar.dart';
import 'package:energy_trade/common/curved_edges/curved_edge_widget.dart';
import 'package:energy_trade/common/images/rounded_image.dart';
import 'package:energy_trade/common/texts/section_heading.dart';
import 'package:energy_trade/features/shop/05_marketplace/all_products_buy_screen.dart';
import 'package:energy_trade/features/shop/05_marketplace/widgets/bottom_add_to_cart_widget.dart';
import 'package:energy_trade/features/shop/05_marketplace/widgets/marketplace_horizotal_item.dart';
import 'package:energy_trade/features/shop/05_marketplace/widgets/marketplace_product_attributes.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:energy_trade/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MarketplaceItemDetail extends StatelessWidget {
  const MarketplaceItemDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CcColors.secondary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                CcCurvedEdgeWidget(
                  child: Container(
                    color: Colors.grey.shade500,
                    child: SizedBox(
                      width: CcDeviceUtils.getScreenWidth(context),
                      child: const CcRoundedImage(imageUrl: CcImages.company1),
                    ),
                  ),
                ),

                // imply leading
                const CcAppBar(automaticallyImplyLeading: true)
              ],
            ),

            // category: can be business, analysis, insights, education etc
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  // category: can be business, analysis, insights, education etc
                  Container(
                    height: 30,
                    width: 100,
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)),
                    child: Center(
                      child: Text(
                        "SOLAR",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),

                  const SizedBox(height: CcSizes.spaceBtnItems_2 / 2),

                  // market product details
                  const MarketplaceProductAttributes(),

                  const SizedBox(height: CcSizes.spaceBtnItems_1),

                  const BottomAddToCart(),

                  const SizedBox(height: CcSizes.spaceBtnItems_1 * 2),

                  CcSectionHeading(
                    title: "Similar Offers",
                    showActionButton: true,
                    onPressed: () => Get.to(
                        () => const AllProductsScreen(title: "Similar Offers")),
                  ),

                  Column(
                    children: [
                      // listview
                      ListView.separated(
                        itemCount: 3,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        separatorBuilder: (content, index) =>
                            const SizedBox(height: CcSizes.spaceBtnItems_1),
                        itemBuilder: (context, index) =>
                            // content
                            const MarketHorizontalItems(),
                      ),
                    ],
                  ),
                  const SizedBox(height: CcSizes.spaceBtnItems_1),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
