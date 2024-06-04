import 'package:energy_trade/features/shop/02_analytics/widgets/analytics_summary.dart';
import 'package:energy_trade/features/shop/05_marketplace/widgets/marketplace_table_filter.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class MarketplaceTab extends StatelessWidget {
  const MarketplaceTab({super.key});

  @override
  Widget build(BuildContext context) {
    // var
    var categories = [
      "Solar",
      "Geothermal",
      "Battery",
      "Charcoal",
      "Wind",
    ];

    // content
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const AnalyticsSummary(),

                const SizedBox(height: CcSizes.spaceBtnItems_1),

                // divider
                const Divider(color: Colors.black26),

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
                              hintText: "Solar"),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // table
          // never like anyone but this is real deal
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: DataTable(
              headingRowColor:
                  MaterialStateProperty.all(Colors.grey.withOpacity(0.3)),

              columnSpacing: 25,

              columns: const [
                DataColumn(
                  label: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Seller"),
                      ],
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Price"),
                      ],
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("kWh Available"),
                      ],
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Energy Category"),
                      ],
                    ),
                  ),
                ),
              ],

              // rows
              rows: [
                for (int i = 0; i < 10; i++)
                  DataRow(
                    color: MaterialStateProperty.resolveWith(
                        (states) => Colors.grey.shade200),
                    cells: [
                      DataCell(
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              color: Colors.transparent,
                              width: 70,
                              child: Text(
                                "HE Power Solution",
                                softWrap: true,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(fontSize: 13),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                          ],
                        ),
                      ),
                      DataCell(
                        Center(
                          child: Container(
                            color: Colors.transparent,
                            width: 40,
                            child: Center(
                              child: Text(
                                "3000/= ",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                      DataCell(
                        Center(
                          child: Text(
                            "10000 kWh",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontSize: 14),
                          ),
                        ),
                      ),
                      DataCell(
                        Center(
                          child: Container(
                            height: 20,
                            width: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(3),
                              color: Colors.blue,
                            ),
                            child: Center(
                              child: Text(
                                "Solar",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(
                                      fontSize: 14,
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),

          const Divider(),

          const SizedBox(height: CcSizes.spaceBtnItems_1),

          const MarketplaceTableFilter(),

          const SizedBox(height: CcSizes.spaceBtnItems_2),
        ],
      ),
    );
  }
}
