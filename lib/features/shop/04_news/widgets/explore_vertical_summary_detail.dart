import 'package:energy_trade/common/images/rounded_image.dart';
import 'package:energy_trade/features/shop/04_news/news_details_.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreVerticalSummaryDetail extends StatelessWidget {
  const ExploreVerticalSummaryDetail({
    super.key,
  });

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
          padding: const EdgeInsets.only(left: 5, right: 5, top: 5),
          width: 130,
          child: Column(
            children: [
              Container(
                  width: 120,
                  height: 120,
                  padding: EdgeInsets.zero,
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: const CcRoundedImage(imageUrl: CcImages.company1)),

              const SizedBox(height: CcSizes.spaceBtnItems_2),

              // category: can be business, analysis, insights, education etc
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                ],
              ),

              const SizedBox(height: CcSizes.spaceBtnItems_2 / 2),

              // information header
              Row(
                children: [
                  Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.zero,
                    width: 120,
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
                      "2 hours ago",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontSize: 11, color: Colors.grey),
                      softWrap: true,
                      maxLines: 3,
                    ),
                  )
                ],
              ),

              const SizedBox(height: CcSizes.spaceBtnItems_2 / 3),
            ],
          ),
        ),
      ),
    );
  }
}
