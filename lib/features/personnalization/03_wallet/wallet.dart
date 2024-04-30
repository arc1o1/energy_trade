import 'package:energy_trade/common/drawer/drawer.dart';
import 'package:energy_trade/features/shop/01_home/widgets/line_chart.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Material(
                  elevation: 5,
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Portfolio Balance"),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
