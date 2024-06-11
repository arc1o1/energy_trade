import 'package:energy_trade/features/shop/05_marketplace/widgets/marketplace_horizotal_item.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class AllProductsScreen extends StatelessWidget {
  const AllProductsScreen({super.key, required this.title, this.number = 0});

  final String title;
  final int number;

  @override
  Widget build(BuildContext context) {
    // var

    var containerColor = Colors.blue;
    var textColor = Colors.white;
    var energyClass = "SOLAR";

    if (number == 0) {
      containerColor = Colors.blue;
      textColor = Colors.white;
      energyClass = "SOLAR";
    } else if (number == 1) {
      containerColor = Colors.green;
      textColor = Colors.white;
      energyClass = "BIOMASS";

    } else if (number == 2) {
      containerColor = Colors.lightGreen;
      textColor = Colors.white;
      energyClass = "WIND";
    }

    // scaffold
    return Scaffold(
      backgroundColor: CcColors.secondary,
      appBar: AppBar(
        automaticallyImplyLeading: true,
        backgroundColor: Colors.green,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          title,
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
              // listview
              ListView.separated(
                itemCount: 6,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                physics: const NeverScrollableScrollPhysics(),
                separatorBuilder: (content, index) =>
                    const SizedBox(height: CcSizes.spaceBtnItems_1),
                itemBuilder: (context, index) =>
                    // content
                    MarketHorizontalItems(
                  textColor: textColor,
                  containerColor: containerColor,
                  energyClass: energyClass,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
