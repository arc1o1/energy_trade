import 'package:energy_trade/common/containers/section_heading.dart';
import 'package:energy_trade/common/drawer/drawer.dart';
import 'package:energy_trade/common/images/circular_image.dart';
import 'package:energy_trade/common/images/rounded_image.dart';
import 'package:energy_trade/features/personnalization/03_wallet/widgets/crypto_company_detail.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var
    var categories = [
      "This Week",
      "This Month",
      "Last Month",
      "Last Two Months"
    ];

    //scaffold
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CcColors.primary,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          "Wallet",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade100,
              ),
        ),
      ),
      drawer: const CcDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // welcoming a client
              Row(
                children: [
                  Text(
                    "Welcome to your e_wallet",
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontSize: 15,
                        ),
                  ),
                ],
              ),

              const SizedBox(height: CcSizes.spaceBtnItems_2 * 2),

              // first material container
              // blue in color
              // summary
              Material(
                elevation: 5,
                color: Colors.blue,
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Portfolio Balance",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Colors.white,
                                  fontSize: 13,
                                ),
                          ),
                        ],
                      ),

                      const SizedBox(height: CcSizes.spaceBtnItems_1),

                      // money in the account
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "120,000/= Tshs",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Colors.white,
                                  fontSize: 25,
                                ),
                          ),

                          // price inflation
                          Container(
                            height: 35,
                            width: 70,
                            padding: const EdgeInsets.all(5),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.arrow_circle_up_rounded,
                                  color: Colors.white,
                                  size: 15,
                                ),

                                const SizedBox(width: 3),

                                // how up or down has it gone
                                Text(
                                  "1.25%",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),

                      const SizedBox(height: 10),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(
                            Icons.arrow_circle_up_rounded,
                            color: Colors.white,
                            size: 15,
                          ),

                          const SizedBox(width: 3),

                          // how up or down has it gone
                          Text(
                            "+25,000/= Tshs",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),

                          const SizedBox(width: 10),

                          // how up or down has it gone
                          Text(
                            "Today's Profit",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: Colors.yellow,
                                  fontSize: 13,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ],
                      ),

                      const SizedBox(height: CcSizes.spaceBtnItems_1),

                      // options
                      Container(
                        height: 50,
                        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // sell crypto
                            InkWell(
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.sell_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  ),

                                  const SizedBox(width: 3),

                                  // how up or down has it gone
                                  Text(
                                    "Sell Energy",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),

                            //
                            InkWell(
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.monetization_on,
                                    color: Colors.white,
                                    size: 15,
                                  ),

                                  const SizedBox(width: 3),

                                  // how up or down has it gone
                                  Text(
                                    "Withdraw",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),

                            //
                            InkWell(
                              onTap: () {},
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Icon(
                                    Icons.analytics_outlined,
                                    color: Colors.white,
                                    size: 15,
                                  ),

                                  const SizedBox(width: 3),

                                  // how up or down has it gone
                                  Text(
                                    "Analytics",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: Colors.white,
                                          fontSize: 13,
                                          fontWeight: FontWeight.bold,
                                        ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              // second material container
              // grey in color
              // summary on the spending and income
              Material(
                elevation: 5,
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Text(
                              "13 Mar - 20 Mar",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(fontSize: 16),
                            ),
                          ),

                          // filter box
                          Expanded(
                            flex: 4,
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
                                      borderSide:
                                          const BorderSide(color: Colors.grey),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    hintText: "This Week"),
                              ),
                            ),
                          ),

                          const SizedBox(),
                        ],
                      ),

                      const SizedBox(height: CcSizes.spaceBtnItems_1 * 2),

                      // income and spending
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // income
                          Row(
                            children: [
                              const Icon(
                                Icons.arrow_circle_down_rounded,
                                size: 40,
                                color: Colors.green,
                              ),

                              const SizedBox(width: 10),

                              // texts
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Income",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                            fontSize: 13, color: Colors.grey),
                                  ),

                                  //
                                  Text(
                                    "25,000/=",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                            fontSize: 18, color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),

                          // spending
                          Row(
                            children: [
                              const Icon(
                                Icons.arrow_circle_up_rounded,
                                size: 40,
                                color: Colors.red,
                              ),

                              const SizedBox(width: 10),

                              // texts
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Spending",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                            fontSize: 13, color: Colors.grey),
                                  ),

                                  //
                                  Text(
                                    "0.0/=",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                            fontSize: 18, color: Colors.black),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),

                      const SizedBox(height: CcSizes.spaceBtnItems_1),

                      const Divider(),

                      const SizedBox(height: CcSizes.spaceBtnItems_1),

                      //show chart button
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "Show Chart",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontSize: 18, color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              Material(
                elevation: 5,
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      // heading
                      CcSectionHeading(
                        title: "Linked Accounts",
                        showActionButton: true,
                        onPressed: () {},
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // visa
                          const Row(
                            children: [
                              CcRoundedImage(
                                borderRadius: 0,
                                imageUrl: CcImages.visa,
                                width: 70,
                              ),

                              SizedBox(width: 10),

                              // mastercard
                              CcRoundedImage(
                                borderRadius: 0,
                                imageUrl: CcImages.mastercad,
                                width: 70,
                              ),
                            ],
                          ),

                          // add card
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              foregroundColor: Colors.white,
                              backgroundColor: CcColors.primary,
                              disabledForegroundColor: Colors.grey,
                              disabledBackgroundColor: Colors.grey,
                              side: const BorderSide(color: Colors.transparent),
                              padding: const EdgeInsets.symmetric(vertical: 18),
                              textStyle: const TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(100)),
                            ),
                            child: const Icon(Icons.add),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              // fourth section
              // favorite assets
              CcSectionHeading(
                title: "Fav Assets",
                showActionButton: true,
                onPressed: () {},
              ),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              for (int i = 0; i < 3; i++) const CryptoCompaniesRowDetail(),

              const SizedBox(height: CcSizes.spaceBtnItems_1),

              // fifth section
              // activities
              Column(
                children: [
                  CcSectionHeading(
                    title: "Your Activities",
                    showActionButton: true,
                    onPressed: () {},
                  ),

                  const SizedBox(height: CcSizes.spaceBtnItems_2),

                  //
                  for (int i = 0; i < 3; i++)
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const CcCircularImage(
                              image: CcImages.bnb,
                              backgroundColor: Colors.transparent,
                            ),

                            const SizedBox(width: CcSizes.spaceBtnItems_2 * 4),

                            //
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "11 Mar 2024",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              fontSize: 12, color: Colors.grey),
                                    ),

                                    //
                                    Text(
                                      "Bank Deposit",
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                              fontSize: 13,
                                              color: Colors.black),
                                    ),

                                    //
                                    Row(
                                      children: [
                                        Text(
                                          "Bank Transfer   ",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall!
                                              .copyWith(
                                                  fontSize: 13,
                                                  color: Colors.black),
                                        ),

                                        const Icon(
                                          Icons.circle,
                                          size: 4,
                                          color: Colors.green,
                                        ),

                                        //
                                        Text(
                                          " Completed",
                                          style: Theme.of(context)
                                              .textTheme
                                              .headlineSmall!
                                              .copyWith(
                                                  fontSize: 12,
                                                  color: Colors.green),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),

                                const SizedBox(width: 20),

                                //
                                Text(
                                  "20000/= Tshs",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                          fontSize: 13, color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),

                        //
                        const Divider(),
                      ],
                    )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
