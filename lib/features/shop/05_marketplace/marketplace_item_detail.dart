import 'package:energy_trade/common/appbar/appbar.dart';
import 'package:energy_trade/common/curved_edges/curved_edge_widget.dart';
import 'package:energy_trade/common/favorite_icon/favorite_icon.dart';
import 'package:energy_trade/common/images/rounded_image.dart';
import 'package:energy_trade/features/shop/05_marketplace/widgets/bottom_add_to_cart_widget.dart';
import 'package:energy_trade/features/shop/05_marketplace/widgets/marketplace_product_attributes.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:energy_trade/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';

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
                  //

                  // category: can be business, analysis, insights, education etc
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
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
                                    .copyWith(
                                        color: Colors.white, fontSize: 15),
                              ),
                            ),
                          ),

                          const SizedBox(width: 20),

                          // rating icon
                          const Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 18,
                          ),

                          const SizedBox(width: 5),

                          Text(
                            "4.3",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontSize: 18),
                          ),
                        ],
                      ),
                      const CcFavoriteIcon(),
                    ],
                  ),

                  const SizedBox(height: CcSizes.spaceBtnItems_1),

                  // header
                  Material(
                    elevation: 5,
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          // supplier
                          Row(
                            children: [
                              Text(
                                "Supplier  :",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(fontSize: 20),
                                softWrap: true,
                                maxLines: 3,
                              ),

                              const SizedBox(width: 18),

                              // sub
                              Text(
                                "HE Power Solution",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                        fontSize: 20,
                                        color: const Color(0xFF0D98BA)),
                                softWrap: true,
                                maxLines: 3,
                              ),
                            ],
                          ),

                          const SizedBox(height: CcSizes.spaceBtnItems_1),

                          // location
                          Row(
                            children: [
                              Text(
                                "Location :",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(fontSize: 20),
                                softWrap: true,
                                maxLines: 3,
                              ),

                              const SizedBox(width: 19),

                              // sub
                              Text(
                                "Kurasini, Dar es Salaam",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                        fontSize: 20,
                                        color: const Color(0xFF0D98BA)),
                                softWrap: true,
                                maxLines: 3,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: CcSizes.spaceBtnItems_1),

                  const Divider(),

                  const SizedBox(height: CcSizes.spaceBtnItems_2 / 2),

                  // market product details
                  const MarketplaceProductAttributes(),

                  const SizedBox(height: CcSizes.spaceBtnItems_1),

                  const BottomAddToCart(),

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
