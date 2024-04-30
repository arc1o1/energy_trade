import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
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
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Material(
                  elevation: 5,
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                  child: Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "ENERGY ACCOUNT",
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineSmall!
                                  .copyWith(color: Colors.white),
                            ),
                          ],
                        ),
                        const SizedBox(height: CcSizes.spaceBtnItems_2),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
