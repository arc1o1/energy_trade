import 'package:energy_trade/common/images/circular_image.dart';
import 'package:energy_trade/utils/constants/image_strings.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class BuyEnergyHistory extends StatelessWidget {
  const BuyEnergyHistory({super.key});

  @override
  Widget build(BuildContext context) {
    // var categories = [
    //   "Solar",
    //   "Battery",
    //   "Wind",
    //   "Geothermal",
    //   "Coal",
    //   "charcoal",
    // ];

    var dcategories = [
      "13/03/24 - 20/03/24",
      "13/03/24 - 20/03/24",
      "13/03/24 - 20/03/24",
      "13/03/24 - 20/03/24",
      "13/03/24 - 20/03/24",
    ];

    var scategories = [
      "Pending",
      "Success",
      "Canceled",
    ];

    var wcategories = [
      "Bitcoin",
      "Ethereum",
      "BNB",
    ];

    // content
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Material(
                  elevation: 5,
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        //first section
                        // date range
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Date",
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
                                  items: dcategories.map((category) {
                                    return DropdownMenuItem(
                                        value: category, child: Text(category));
                                  }).toList(),
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      hintText: "13/03/24 -20/03/24"),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: CcSizes.spaceBtnItems_1),

                        // second section
                        // deal number
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Deal(#)",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(fontSize: 16),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: SizedBox(
                                height: 40,
                                width: 100,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: '#number',
                                    labelStyle: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(fontWeight: FontWeight.w600),
                                    hintStyle: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                            color: Colors.black, fontSize: 13),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: CcSizes.spaceBtnItems_1),

                        // third section
                        // status : success, cancelled, pending
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Status",
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
                                  items: scategories.map((category) {
                                    return DropdownMenuItem(
                                        value: category, child: Text(category));
                                  }).toList(),
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      hintText: "select status"),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: CcSizes.spaceBtnItems_1),

                        // last section
                        // crypto wallet
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Text(
                                "Crypto Wallet",
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
                                  items: wcategories.map((category) {
                                    return DropdownMenuItem(
                                        value: category, child: Text(category));
                                  }).toList(),
                                  onChanged: (value) {},
                                  decoration: InputDecoration(
                                      filled: true,
                                      fillColor: Colors.transparent,
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.grey),
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      hintText: "choose wallet"),
                                ),
                              ),
                            ),
                          ],
                        ),

                        const SizedBox(height: CcSizes.spaceBtnItems_1),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),

          //spacing
          const SizedBox(height: CcSizes.spaceBtnItems_2),

          // tabular view
          // one of the best here
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
                        Text("Date"),
                      ],
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Deal (#)"),
                      ],
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Status"),
                      ],
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Price per kWh"),
                      ],
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Amount in kWh"),
                      ],
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Amount (Tshs/Crypto)"),
                      ],
                    ),
                  ),
                ),
                DataColumn(
                  label: Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Crypto Wallet"),
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
                              width: 50,
                              child: Text(
                                "15/12/22",
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
                            width: 50,
                            child: Center(
                              child: Text(
                                "#34098",
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
                          child: Container(
                            width: 80,
                            height: 20,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(3)),
                            child: Center(
                              child: Text(
                                "Success",
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
                      DataCell(
                        Center(
                          child: Container(
                            color: Colors.transparent,
                            width: 70,
                            child: Center(
                              child: Text(
                                "1000/= Tshs",
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
                          child: Container(
                            color: Colors.transparent,
                            width: 80,
                            child: Center(
                              child: Text(
                                "754000 kWh",
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
                          child: Container(
                            color: Colors.transparent,
                            width: 100,
                            child: Center(
                              child: Text(
                                "754000/=\n0.000005449",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(fontSize: 14),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const DataCell(
                        Center(
                          child: CcCircularImage(
                            image: CcImages.bitcoin,
                            width: 50,
                            height: 50,
                            backgroundColor: Colors.transparent,
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
