import 'package:energy_trade/common/containers/primary_header_container.dart';
import 'package:energy_trade/common/containers/section_heading.dart';
import 'package:energy_trade/features/shop/04_news/all_news.dart';
import 'package:energy_trade/features/shop/04_news/widgets/explore_vertical_summary_detail.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploringTab extends StatelessWidget {
  const ExploringTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CcPrimaryHeaderContainer(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(height: CcSizes.spaceBtnItems_1),
                  Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Discover Trending and Latest News",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                          ),
                          const SizedBox(height: CcSizes.spaceBtnItems_1),
                          Text(
                            "Discover your news with easy trading",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),

          // all the news are going in here
          Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Column(
              children: [
                // section heading
                CcSectionHeading(
                  title: "Today",
                  showActionButton: true,
                  onPressed: () =>
                      Get.to(() => const AllNewsScreen(title: "Today's News")),
                ),

                // today's news
                SizedBox(
                  height: 250,
                  child: ListView.separated(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (content, index) =>
                        const SizedBox(width: CcSizes.spaceBtnItems_1),
                    itemBuilder: (context, index) =>
                        // content
                        const ExploreVerticalSummaryDetail(),
                  ),
                ),

                const SizedBox(height: CcSizes.spaceBtnItems_1),

                // section heading
                CcSectionHeading(
                  title: "Top news",
                  showActionButton: true,
                  onPressed: () => Get.to(
                    () => const AllNewsScreen(
                      title: "Top News",
                      showWhen: true,
                    ),
                  ),
                ),

                // top news
                SizedBox(
                  height: 250,
                  child: ListView.separated(
                    itemCount: 3,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (content, index) =>
                        const SizedBox(width: CcSizes.spaceBtnItems_1),
                    itemBuilder: (context, index) =>
                        // content
                        const ExploreVerticalSummaryDetail(),
                  ),
                ),

                const SizedBox(height: CcSizes.spaceBtnItems_1),

                // // section heading
                // CcSectionHeading(
                //   title: "Recent Searches",
                //   showActionButton: true,
                //   onPressed: () {},
                // ),

                // // recent searches
                // SizedBox(
                //   height: 230,
                //   child: ListView.separated(
                //     itemCount: 3,
                //     shrinkWrap: true,
                //     scrollDirection: Axis.horizontal,
                //     separatorBuilder: (content, index) =>
                //         const SizedBox(width: CcSizes.spaceBtnItems_1),
                //     itemBuilder: (context, index) =>
                //         // content
                //         const ExploreSummaryDetail(),
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
