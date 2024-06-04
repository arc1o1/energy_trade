import 'package:energy_trade/features/shop/02_analytics/widgets/analytics_summary.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:energy_trade/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var

    var eCategories = [
      "Solar",
      "Battery",
      "Wind",
      "Geothermal",
      "Coal",
      "charcoal",
    ];

    var categories = [
      "Yes",
      "No",
    ];

    // scaffold
    return Scaffold(
      backgroundColor: CcColors.secondary,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.green,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          "Checkout",
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
              // material summary
              const AnalyticsSummary(),

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
                      "Automatically buy energy production",
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
                      height: 40,
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

              // buying price for automated buyout
              // amount to be sold
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "At what price should automated buyout should occur",
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
                          hintText: 'eg. 1000 Tshs',
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

              const Divider(),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Energy Seller Name",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontSize: 16),
                    ),
                  ),

                  // filter box
                  Expanded(
                    flex: 2,
                    child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "HE Power Solution",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontSize: 13),
                          ),
                        )),
                  ),

                  const SizedBox(),
                ],
              ),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              // amount to be bought
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Energy amount to be bought",
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

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Buying Price",
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(fontSize: 16),
                    ),
                  ),

                  // filter box
                  Expanded(
                    flex: 2,
                    child: Container(
                        width: 100,
                        height: 40,
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            "3000 Tshs",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontSize: 14),
                          ),
                        )),
                  ),

                  const SizedBox(),
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
                      height: 40,
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

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              const Divider(),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              // selling at market value
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Automatically buy excess energy when price drops",
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
                      height: 40,
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

              // start selling price
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "At what price do you want to buy excess energy",
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
                          hintText: 'eg. 1000 Tshs',
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

              const SizedBox(height: CcSizes.spaceBtnItems_1 * 2),

              SizedBox(
                width: CcHelperFunctions.screenWidth() / 2,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Buy"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
