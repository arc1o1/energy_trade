import 'package:energy_trade/common/drawer/drawer.dart';
import 'package:energy_trade/features/personnalization/04_history/widgets/buy_energy_history_tab.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

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
            "History",
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
              Tab(text: "Buy Energy"),
              Tab(text: "Sell Energy"),
              Tab(text: "Deposit"),
              Tab(text: "Withdrawal"),
            ],
            indicatorColor: Colors.white,
            unselectedLabelColor: CcColors.softGrey,
            unselectedLabelStyle: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontSize: 14),
            labelColor: Colors.white,
            labelStyle: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(fontSize: 14),
          ),
        ),
        body: const TabBarView(
          children: [
            BuyEnergyHistory(),
            BuyEnergyHistory(),
            BuyEnergyHistory(),
            BuyEnergyHistory(),
          ],
        ),
      ),
    );
  }
}
