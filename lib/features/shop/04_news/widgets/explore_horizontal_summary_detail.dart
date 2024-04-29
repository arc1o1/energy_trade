import 'package:energy_trade/common/images/rounded_image.dart';
import 'package:energy_trade/features/shop/04_news/news_details_.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:energy_trade/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreHorizontalSummaryDetail extends StatelessWidget {
  const ExploreHorizontalSummaryDetail({
    super.key,
    this.showWhen = false,
  });

  final bool showWhen;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(
        () => const NewsDetails(
          title: "Make your sustainable energy roll up on the market",
        ),
      ),
      child: Material(
        elevation: 5,
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.all(5),
          width: CcDeviceUtils.getScreenWidth(context),
          child: Row(
            children: [
              Container(
                  width: 95,
                  height: 95,
                  padding: EdgeInsets.zero,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: const CcRoundedImage(imageUrl: CcImages.company1)),

              const SizedBox(width: CcSizes.spaceBtnItems_2),

              // category: can be business, analysis, insights, education etc
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 20,
                    width: 50,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(3)),
                    child: Center(
                      child: Text(
                        "Business",
                        style: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.white, fontSize: 13),
                      ),
                    ),
                  ),

                  const SizedBox(height: CcSizes.spaceBtnItems_2 / 2),

                  // information header
                  Row(
                    children: [
                      Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.zero,
                        width: 180,
                        child: Text(
                          "Make your sustainable energy roll up on the market",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontSize: 15),
                          softWrap: true,
                          maxLines: 3,
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: CcSizes.spaceBtnItems_2 / 3),

                  // time
                  Row(
                    children: [
                      Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.zero,
                        width: 120,
                        child: Text(
                          "3 Mins Read",
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(fontSize: 13, color: Colors.grey),
                          softWrap: true,
                          maxLines: 3,
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: CcSizes.spaceBtnItems_2 / 3),

                  // when
                  showWhen
                      ? Container(
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
                                    .copyWith(fontSize: 13, color: Colors.grey),
                                softWrap: true,
                                maxLines: 3,
                              ),
                            ],
                          ),
                        )
                      : const SizedBox(),

                  const SizedBox(height: CcSizes.spaceBtnItems_2 / 3),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
