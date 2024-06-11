import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class EnergyProductionTab extends StatelessWidget {
  const EnergyProductionTab({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Sun', 12, 10),
      ChartData('Mon', 14, 11),
      ChartData('Tue', 16, 10),
      ChartData('Wed', 18, 16),
      ChartData('Thu', 18, 16),
      ChartData('Fri', 18, 16),
      ChartData('Sat', 18, 16),
    ];

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Material(
                elevation: 5,
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
                child: Column(
                  children: [
                    // legends container
                    Container(
                      padding: const EdgeInsets.all(20),
                      color: Colors.transparent,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              // title for the graph
                              // energy consumption for consumer
                              // energy production for the producer
                              Text(
                                "Energy Purchase/Consumption",
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineSmall!
                                    .copyWith(fontSize: 15),
                              ),
                            ],
                          ),

                          const SizedBox(height: CcSizes.spaceBtnItems_1),

                          // legends
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              // first legend
                              Row(
                                children: [
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        color: Colors.blue.shade700,
                                        borderRadius: BorderRadius.circular(2)),
                                  ),

                                  const SizedBox(width: 10),

                                  // purchase
                                  Text(
                                    "Purchase",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(fontSize: 15),
                                  ),
                                ],
                              ),

                          //     // legend 02
                          //     Row(
                          //       children: [
                          //         Container(
                          //           width: 10,
                          //           height: 10,
                          //           decoration: BoxDecoration(
                          //               color: Colors.cyan,
                          //               borderRadius: BorderRadius.circular(2)),
                          //         ),
                          //
                          //         const SizedBox(width: 10),
                          //
                          //         // purchase
                          //         Text(
                          //           "Sell",
                          //           style: Theme.of(context)
                          //               .textTheme
                          //               .headlineSmall!
                          //               .copyWith(fontSize: 15),
                          //         ),
                          //       ],
                          //     ),
                            ],
                          )
                        ],
                      ),
                    ),

                    // bar chart

                    SfCartesianChart(
                      primaryXAxis: const CategoryAxis(
                        majorGridLines: MajorGridLines(width: 0),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                        ),
                      ),
                      primaryYAxis: const NumericAxis(
                        // majorGridLines: MajorGridLines(width: 0),
                        labelStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                        ),
                      ),

                      // expenses data for the consumer
                      series: <CartesianSeries>[
                        StackedColumnSeries<ChartData, String>(
                            spacing: 0.5,
                            groupName: 'Group A',
                            width: 0.3,
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(3),
                              topRight: Radius.circular(3),
                            ),
                            dataSource: chartData,
                            color: Colors.blue.shade700,
                            xValueMapper: (ChartData data, _) => data.x,
                            yValueMapper: (ChartData data, _) => data.y1,
                        ),

                        // // sales data for the producer of energy
                        // StackedColumnSeries<ChartData, String>(
                        //     spacing: 0.5,
                        //     borderRadius: const BorderRadius.only(
                        //       topLeft: Radius.circular(3),
                        //       topRight: Radius.circular(3),
                        //     ),
                        //     groupName: 'Group B',
                        //     dataSource: chartData,
                        //     color: Colors.cyan.shade400,
                        //     xValueMapper: (ChartData data, _) => data.x,
                        //     yValueMapper: (ChartData data, _) => data.y2,
                        // ),
                      ],
                    ),

                    const SizedBox(height: CcSizes.spaceBtnSections),

                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  // sub
                                  Text(
                                    "kWh Purchased ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: Colors.blueGrey,
                                          fontSize: 15,
                                        ),
                                  ),

                                  const SizedBox(
                                      height: CcSizes.spaceBtnItems_2),

                                  Text(
                                    "900 kWh",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: Colors.black,
                                          fontSize: 21,
                                        ),
                                  ),

                                  const SizedBox(
                                      height: CcSizes.spaceBtnItems_1 / 3),
                                ],
                              ),

                              //
                              Column(
                                children: [
                                  // sub
                                  Text(
                                    "kWh Consumed ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: Colors.blueGrey,
                                          fontSize: 15,
                                        ),
                                  ),

                                  const SizedBox(
                                      height: CcSizes.spaceBtnItems_2),

                                  Text(
                                    "100 kWh",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: Colors.black,
                                          fontSize: 21,
                                        ),
                                  ),

                                  const SizedBox(
                                      height: CcSizes.spaceBtnItems_1 / 3),
                                ],
                              ),
                            ],
                          ),

                          const SizedBox(height: CcSizes.spaceBtnItems_1),

                          //
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                children: [
                                  // sub
                                  Text(
                                    "Available For Sale ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: Colors.blueGrey,
                                          fontSize: 15,
                                        ),
                                  ),

                                  const SizedBox(
                                      height: CcSizes.spaceBtnItems_2),

                                  Text(
                                    "800 kWh",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: Colors.black,
                                          fontSize: 21,
                                        ),
                                  ),

                                  const SizedBox(
                                      height: CcSizes.spaceBtnItems_1 / 3),
                                ],
                              ),

                              //
                              Column(
                                children: [
                                  // sub
                                  Text(
                                    "Currently in Market ",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: Colors.blueGrey,
                                          fontSize: 15,
                                        ),
                                  ),

                                  const SizedBox(
                                      height: CcSizes.spaceBtnItems_2),

                                  Text(
                                    "100 kWh",
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineSmall!
                                        .copyWith(
                                          color: Colors.black,
                                          fontSize: 21,
                                        ),
                                  ),

                                  const SizedBox(
                                      height: CcSizes.spaceBtnItems_1 / 3),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y1, this.y2);
  final String x;
  final double y1;
  final double y2;
}
