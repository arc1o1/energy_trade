import 'package:energy_trade/features/shop/05_marketplace/widgets/marketplace_horizotal_item.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MarketplaceTab extends StatelessWidget {
  const MarketplaceTab({super.key});

  @override
  Widget build(BuildContext context) {
    // var
    var categories = [
      "House",
      "Apartment",
      "Business",
      "Business Complex",
      "Corporate",
      "Industry",
      "Factory",
    ];

    // content
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Buying Power for: ",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: const Color(0xFF0D98BA),
                        fontSize: 20,
                      ),
                ),
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            // parent category
            DropdownButtonFormField(
              items: categories.map((category) {
                return DropdownMenuItem(value: category, child: Text(category));
              }).toList(),
              onChanged: (value) {},
              // onChanged: (newValue) {
              //   setState(() => category = newValue!);
              // },
              // value: category,
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  filled: true,
                  fillColor: Colors.transparent,
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  hintText: "Select Category"),
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            Row(
              children: [
                Text(
                  "Results:",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        color: const Color(0xFF0D98BA),
                        fontSize: 20,
                      ),
                ),
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            ListView.separated(
                itemCount: 4,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (content, index) =>
                    const SizedBox(height: CcSizes.spaceBtnItems_1),
                itemBuilder: (context, index) =>
                    // content
                    const MarketHorizontalItems()),
          ],
        ),
      ),
    );
  }
}
