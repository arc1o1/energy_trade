import 'package:energy_trade/common/drawer/drawer.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CcColors.primary,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: Text(
          "Reviews",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade100,
              ),
        ),
      ),
      drawer: const CcDrawer(),
      body: Container(color: Colors.green),
    );
  }
}
