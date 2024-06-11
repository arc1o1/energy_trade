import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BuyingAnalyticsSummary extends StatelessWidget {
  const BuyingAnalyticsSummary({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // heading
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "ENERGY ACCOUNT",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white),
                ),
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // first column
                Column(
                  children: [
                    Text(
                      "900 kWh",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.white,
                                fontSize: 23,
                              ),
                    ),

                    const SizedBox(height: CcSizes.spaceBtnItems_1 / 3),

                    // sub
                    Text(
                      "Purchased Energy",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.yellowAccent,
                                fontSize: 15,
                              ),
                    ),
                  ],
                ),

                // second column
                Column(
                  children: [
                    Text(
                      "800 kWh",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.white,
                                fontSize: 23,
                              ),
                    ),

                    const SizedBox(height: CcSizes.spaceBtnItems_1 / 3),

                    // sub
                    Text(
                      "Available Energy",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.yellowAccent,
                                fontSize: 15,
                              ),
                    ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // first column
                Column(
                  children: [
                    Text(
                      "100 kWh",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.white,
                                fontSize: 23,
                              ),
                    ),

                    const SizedBox(height: CcSizes.spaceBtnItems_1 / 3),

                    // sub
                    Text(
                      "Worn/Used Energy",
                      style:
                          Theme.of(context).textTheme.headlineSmall!.copyWith(
                                color: Colors.yellowAccent,
                                fontSize: 15,
                              ),
                    ),
                  ],
                ),

                // Row(
                //   children: [
                //     InkWell(
                //       onTap: () {},
                //       child: Container(
                //         padding: const EdgeInsets.all(10),
                //         decoration: BoxDecoration(
                //           color: Colors.transparent,
                //           border: Border.all(color: Colors.white),
                //           borderRadius: BorderRadius.circular(10),
                //         ),
                //         child: Text(
                //           "Buy More",
                //           style: Theme.of(context)
                //               .textTheme
                //               .headlineSmall!
                //               .copyWith(color: Colors.white, fontSize: 15),
                //         ),
                //       ),
                //     ),
                //     const SizedBox(width: 9),
                //   ],
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
