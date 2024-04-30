import 'package:energy_trade/common/appbar/tabbar.dart';
import 'package:energy_trade/common/drawer/drawer.dart';
import 'package:energy_trade/features/shop/02_analytics/widgets/analytics_summary.dart';
import 'package:energy_trade/features/shop/02_analytics/widgets/consumer_tab.dart';
import 'package:energy_trade/features/shop/02_analytics/widgets/energy_production_tab.dart';
import 'package:energy_trade/features/shop/02_analytics/widgets/income_tab.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:energy_trade/utils/devices/device_utility.dart';
import 'package:energy_trade/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class AnalyticsScreen extends StatelessWidget {
  const AnalyticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var
    var categories = [
      "Energy Production",
      "Income",
      "Consumers",
    ];

    // scaffold
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: CcColors.primary,
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          title: Text(
            "Analytics",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade100,
                ),
          ),
        ),
        drawer: const CcDrawer(),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              // sliver appbar, enabling scrolling vertically
              SliverAppBar(
                leadingWidth: 0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: CcHelperFunctions.isDarkMode(context)
                    ? CcColors.dark
                    : Colors.grey.shade300,
                expandedHeight:
                    CcDeviceUtils.getScreenHeight() - 440, // the height

                // elements are inside a padding widget
                flexibleSpace: Padding(
                  padding: const EdgeInsets.all(20),
                  child: ListView(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: const [
                      // space
                      SizedBox(height: CcSizes.spaceBtnItems_1 / 2),

                      // analytics summary

                      AnalyticsSummary(),

                      SizedBox(height: CcSizes.spaceBtnItems_2),
                    ],
                  ),
                ),

                // tabs
                bottom: ETabBar(
                  tabs: categories
                      .map((category) => Tab(child: Text(category)))
                      .toList(),
                ),
              ),
            ];
          },

          // body
          body: const TabBarView(
            children: [
              EnergyProductionTab(),
              IncomeTab(),
              ConsumerTab(),
            ],
          ),
        ),
      ),
    );
  }
}

// SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(20),
//             child: Column(
//               children: [
//                 const AnalyticsSummary(),

//                 const SizedBox(height: CcSizes.spaceBtnItems_1),

//                 // divider
//                 const Divider(color: Colors.black26),

//                 const SizedBox(height: CcSizes.spaceBtnItems_1),

//                 ETabBar(
//                   tabs: categories
//                       .map((category) => Tab(child: Text(category)))
//                       .toList(),
//                 ),

//                 ListView(
//                   children: [
//                     TabBarView(
//                       children: [
//                         Text("one"),
//                         Text("two"),
//                         Text("three"),
//                       ],
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
