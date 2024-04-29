import 'package:energy_trade/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SellingScreen extends StatelessWidget {
  const SellingScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
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
      body: Container(color: Colors.black),
    );
  }
}
