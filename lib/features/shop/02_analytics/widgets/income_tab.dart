import 'package:energy_trade/common/images/rounded_image.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class IncomeTab extends StatelessWidget {
  const IncomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // energy production
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.grey.shade200,
                        child: const SizedBox(
                          width: 40,
                          child: CcRoundedImage(
                            imageUrl: CcImages.company1,
                            width: 40,
                            borderRadius: 3,
                          ),
                        ),
                      ),

                      // spacing
                      const SizedBox(width: 20),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Energy",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(),
                          ),

                          // spacing
                          const SizedBox(height: 5),

                          Text(
                            "Production",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "2372560 kWh",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 20),
                      ),

                      // spacing
                      const SizedBox(height: 5),

                      Text(
                        "+5% (+120 kWh)",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 16, color: Colors.green),
                      ),

                      // spacing
                      const SizedBox(height: 5),

                      Text(
                        "Today",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 16, color: Colors.green),
                      ),

                      // spacing
                      const SizedBox(height: 5),
                    ],
                  ),
                )
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            // energy consumption
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.grey.shade200,
                        child: const SizedBox(
                          width: 40,
                          child: CcRoundedImage(
                            imageUrl: CcImages.company1,
                            width: 40,
                            borderRadius: 3,
                          ),
                        ),
                      ),

                      // spacing
                      const SizedBox(width: 20),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Energy",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(),
                          ),

                          // spacing
                          const SizedBox(height: 5),

                          Text(
                            "Consumption",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "560 kWh",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 20),
                      ),

                      // spacing
                      const SizedBox(height: 5),

                      Text(
                        "+6% (- 77 kWh)",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 16, color: Colors.red),
                      ),

                      // spacing
                      const SizedBox(height: 5),

                      Text(
                        "Today",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 16, color: Colors.red),
                      ),

                      // spacing
                      const SizedBox(height: 5),
                    ],
                  ),
                )
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            // total sales
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.grey.shade200,
                        child: const SizedBox(
                          width: 40,
                          child: CcRoundedImage(
                            imageUrl: CcImages.company1,
                            width: 40,
                            borderRadius: 3,
                          ),
                        ),
                      ),

                      // spacing
                      const SizedBox(width: 20),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Total",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(),
                          ),

                          // spacing
                          const SizedBox(height: 5),

                          Text(
                            "Sales",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "123725/= Tshs",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 20),
                      ),

                      // spacing
                      const SizedBox(height: 5),

                      Text(
                        "+23450 Tshs",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 16, color: Colors.green),
                      ),

                      // spacing
                      const SizedBox(height: 5),

                      Text(
                        "Today",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 16, color: Colors.green),
                      ),

                      // spacing
                      const SizedBox(height: 5),
                    ],
                  ),
                )
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            // average ROI
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Row(
                    children: [
                      Material(
                        elevation: 5,
                        borderRadius: BorderRadius.circular(3),
                        color: Colors.grey.shade200,
                        child: const SizedBox(
                          width: 40,
                          child: CcRoundedImage(
                            imageUrl: CcImages.company1,
                            width: 40,
                            borderRadius: 3,
                          ),
                        ),
                      ),

                      // spacing
                      const SizedBox(width: 20),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Average",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(),
                          ),

                          // spacing
                          const SizedBox(height: 5),

                          Text(
                            "ROI",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "24% kWh",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 20),
                      ),

                      // spacing
                      const SizedBox(height: 5),

                      Text(
                        "+3%",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 16, color: Colors.green),
                      ),

                      // spacing
                      const SizedBox(height: 5),

                      Text(
                        "This Week",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(fontSize: 16, color: Colors.green),
                      ),

                      // spacing
                      const SizedBox(height: 5),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
