import 'package:energy_trade/common/drawer/drawer.dart';
import 'package:energy_trade/features/shop/01_home/widgets/buying_tab.dart';
import 'package:energy_trade/features/shop/01_home/widgets/explore_tab.dart';
import 'package:energy_trade/features/shop/01_home/widgets/marketplace_tab.dart';
import 'package:energy_trade/features/shop/01_home/widgets/selling_tab.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: CcColors.secondary,
        drawer: const CcDrawer(),
        appBar: AppBar(
          backgroundColor: CcColors.primary,
          iconTheme: const IconThemeData(color: Colors.white),
          centerTitle: true,
          title: Text(
            "Home",
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey.shade100,
                ),
          ),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
            const SizedBox(width: 10),
          ],
          bottom: TabBar(
            tabs: const [
              Tab(text: "Explore"),
              Tab(text: "Market"),
              Tab(text: "Buy"),
              Tab(text: "Sell"),
            ],
            indicatorColor: Colors.white,
            unselectedLabelColor: CcColors.softGrey,
            unselectedLabelStyle: Theme.of(context).textTheme.headlineSmall!,
            labelColor: Colors.white,
            labelStyle: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: const TabBarView(
          children: [
            ExploringTab(),
            MarketplaceTab(),
            BuyingTab(),
            SellingTab(),
          ],
        ),
      ),
    );
  }
}
