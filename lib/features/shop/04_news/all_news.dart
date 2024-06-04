import 'package:energy_trade/features/shop/04_news/widgets/explore_horizontal_summary_detail.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllNewsScreen extends StatelessWidget {
  const AllNewsScreen({super.key, required this.title, this.showWhen = false});

  final String title;
  final bool showWhen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CcColors.secondary,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.green,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: Colors.white,
                fontSize: 21,
              ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                child: ListView.separated(
                  itemCount: 6,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  physics: const NeverScrollableScrollPhysics(),
                  separatorBuilder: (content, index) =>
                      const SizedBox(height: CcSizes.spaceBtnItems_1),
                  itemBuilder: (context, index) =>
                      // content
                      ExploreHorizontalSummaryDetail(
                    showWhen: showWhen,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
