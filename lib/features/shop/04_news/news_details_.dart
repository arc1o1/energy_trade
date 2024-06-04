import 'package:energy_trade/common/appbar/appbar.dart';
import 'package:energy_trade/common/curved_edges/curved_edge_widget.dart';
import 'package:energy_trade/common/favorite_icon/favorite_icon.dart';
import 'package:energy_trade/common/images/rounded_image.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:energy_trade/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';

class NewsDetails extends StatelessWidget {
  const NewsDetails({super.key, required this.title});

  final String title;

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
                      Container(
                        height: 30,
                        width: 100,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(5)),
                        child: Center(
                          child: Text(
                            "Business",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ),
                      const CcFavoriteIcon(),
                    ],
                  ),

                  const SizedBox(height: CcSizes.spaceBtnItems_1),

                  // header
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.zero,
                        color: Colors.transparent,
                        width: 320,
                        child: Text(
                          title,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontSize: 20),
                          softWrap: true,
                          maxLines: 3,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: CcSizes.spaceBtnItems_1 / 2),

                  // written by and when
                  Row(
                    children: [
                      Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.zero,
                        width: 120,
                        child: Text(
                          "by Stake News",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontSize: 15, color: Colors.grey),
                          softWrap: true,
                          maxLines: 3,
                        ),
                      ),

                      // when
                      Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.zero,
                        width: 120,
                        child: Row(
                          children: [
                            const Icon(
                              Icons.circle_rounded,
                              size: 7,
                              color: Colors.blue,
                            ),

                            const SizedBox(width: 3),

                            // when
                            Text(
                              "Today",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(fontSize: 15, color: Colors.grey),
                              softWrap: true,
                              maxLines: 3,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const Divider(),

                  const SizedBox(height: CcSizes.spaceBtnItems_2),

                  Text(
                    "Sustainable energy trading, as opposed to conventional fossil fuel trading, revolves around buying and selling electricity generated from renewable sources like solar, wind, geothermal, and hydropower. This burgeoning market is driven by the increasing demand for clean energy and the environmental concerns surrounding fossil fuels.\n\nThis shift towards renewables presents both opportunities and challenges for the trading landscape. On the positive side, renewable energy offers a more sustainable and potentially limitless source of power. Additionally, government incentives and a growing focus on environmental responsibility are fueling the growth of this market. This translates to potential financial rewards for those involved in trading renewable energy certificates (RECs) and contracts that guarantee the delivery of renewable energy.\n\n",
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontSize: 17, color: Colors.black),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
