import 'package:energy_trade/common/images/circular_image.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class CryptoCompaniesRowDetail extends StatelessWidget {
  const CryptoCompaniesRowDetail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            // icon image
            const CcCircularImage(
              image: CcImages.bitcoin,
              backgroundColor: Colors.transparent,
            ),

            const SizedBox(width: CcSizes.spaceBtnItems_2 * 4),

            // business name
            Column(
              children: [
                Text(
                  "BTC",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: 18, color: Colors.black),
                ),

                const SizedBox(height: 5),

                //
                Text(
                  "Bitcoin",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),

            const SizedBox(width: CcSizes.spaceBtnItems_2 * 4),

            // price
            Column(
              children: [
                Text(
                  "60, 165,700/= Tshs",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: 18, color: Colors.black),
                ),

                const SizedBox(height: 5),

                //
                Text(
                  "+3,180,900/= Tshs (0.9%)",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(fontSize: 14, color: Colors.green),
                ),
              ],
            ),
          ],
        ),
        const Divider(),
      ],
    );
  }
}
