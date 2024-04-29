import 'package:energy_trade/common/containers/product_price_text.dart';
import 'package:energy_trade/common/containers/product_title_text.dart';
import 'package:energy_trade/common/texts/section_heading.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MarketplaceProductAttributes extends StatelessWidget {
  const MarketplaceProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    // controller

    // column
    return Column(
      children: [
        const SizedBox(height: 10),

        // selected attribute pricing and description
        Material(
          elevation: 5,
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(10),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                // title, price and stock status
                Row(
                  children: [
                    const CcSectionHeading(
                        title: "Product", showActionButton: false),
                    const SizedBox(width: CcSizes.spaceBtnItems_1),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const CcProductTitleText(
                                title: "price\t\t\t : ", smallSize: true),

                            const SizedBox(width: CcSizes.spaceBtnItems_1 + 10),

                            // sale price
                            Row(
                              children: [
                                const CcProductPriceText(
                                  price: "3000",
                                  color: Color(0xFF0D98BA),
                                ),
                                Text(
                                  " per kWh",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                          fontSize: 15,
                                          color: const Color(0xFF0D98BA)),
                                  softWrap: true,
                                  maxLines: 3,
                                ),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        // status: may be "available with no of plates or products" or "out of order"
                        Row(
                          children: [
                            const CcProductTitleText(
                                title: "status : ", smallSize: true),
                            const SizedBox(width: CcSizes.spaceBtnItems_1 + 10),
                            Text(
                              "Available",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF0D98BA)),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        // quantity
                        Row(
                          children: [
                            const CcProductTitleText(
                                title: "quantity : ", smallSize: true),
                            const SizedBox(width: CcSizes.spaceBtnItems_1),
                            Text(
                              "100kWh",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF0D98BA)),
                            ),
                          ],
                        ),

                        const SizedBox(height: 10),

                        // terms
                        Row(
                          children: [
                            const CcProductTitleText(
                                title: "terms : ", smallSize: true),
                            const SizedBox(width: CcSizes.spaceBtnItems_1 + 12),
                            Text(
                              "12 Months, Fixed",
                              style: Theme.of(context)
                                  .textTheme
                                  .titleSmall!
                                  .copyWith(
                                      fontWeight: FontWeight.w600,
                                      color: const Color(0xFF0D98BA)),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 10),

                // variation description, what dos the variant consist of
                const CcProductTitleText(
                  title:
                      "Imagine turning sunshine into savings!\nSolar power lets you harness the free energy of the sun to power your home.  Reduce your electricity bill, boost your independence, and invest in a cleaner future - all with beautiful solar panels on your roof.",
                  smallSize: true,
                  maxLines: 5,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
        ),

        // const SizedBox(height: CcSizes.spaceBtnItems_1),

        // attributes
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     Wrap(
        //       spacing: 10,
        //       children: [
        //         CcChoiceChip(
        //             text: "Normal", selected: false, onSelected: (value) {}),
        //         CcChoiceChip(
        //             text: "Combo", selected: true, onSelected: (value) {}),
        //         CcChoiceChip(
        //             text: "Super", selected: false, onSelected: (value) {}),
        //       ],
        //     )
        //   ],
        // )
      ],
    );
  }
}
