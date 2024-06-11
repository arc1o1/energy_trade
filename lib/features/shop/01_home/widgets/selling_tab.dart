import 'package:energy_trade/features/shop/02_analytics/widgets/selling_analytics_summary.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:energy_trade/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SellingTab extends StatelessWidget {
  const SellingTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // var
    var categories = [
      "Yes",
      "No",
    ];

    var eCategories = [
      "Solar",
      "Biomass",
      "Wind",
    ];

    // scrollview
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SellingAnalyticsSummary(),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            // divider
            const Divider(color: Colors.black26),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Automatically sell excess energy production",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 16),
                  ),
                ),

                // filter box
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: 100,
                    height: 50,
                    child: DropdownButtonFormField(
                      items: categories.map((category) {
                        return DropdownMenuItem(
                            value: category, child: Text(category));
                      }).toList(),
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: "No"),
                    ),
                  ),
                ),

                const SizedBox(),
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            // selling at market value
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Automatically sell excess energy production",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 16),
                  ),
                ),

                // filter box
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: 100,
                    height: 50,
                    child: DropdownButtonFormField(
                      items: categories.map((category) {
                        return DropdownMenuItem(
                            value: category, child: Text(category));
                      }).toList(),
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: "No"),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            // divider
            const Divider(color: Colors.black26),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            // amount to be sold
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Energy amount to be sold",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 16),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: 40,
                    width: 100,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'eg. 200 kWh',
                        labelStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.w600),
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.black, fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            // start selling price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "At what value do you want to sell your energy",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 16),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: 40,
                    width: 100,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'max 5000/= Tshs',
                        labelStyle: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(fontWeight: FontWeight.w600),
                        hintStyle: Theme.of(context)
                            .textTheme
                            .headlineSmall!
                            .copyWith(color: Colors.black, fontSize: 13),
                      ),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1),

            // energy type
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    "Energy Type",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontSize: 16),
                  ),
                ),

                // filter box
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    width: 100,
                    height: 60,
                    child: DropdownButtonFormField(
                      items: eCategories.map((category) {
                        return DropdownMenuItem(
                            value: category, child: Text(category));
                      }).toList(),
                      onChanged: (value) {},
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          hintText: "Solar"),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: CcSizes.spaceBtnItems_1 * 2),

            SizedBox(
              width: CcHelperFunctions.screenWidth() / 2,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Sell"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
