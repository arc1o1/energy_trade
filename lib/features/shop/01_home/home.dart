import 'package:energy_trade/common/cart/cart_counter_item.dart';
import 'package:energy_trade/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CcColors.secondary,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: CcColors.primary,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
          child: Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(Icons.person),
          ),
        ),
        title: Text(
          "Energy Trading",
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.grey.shade100,
              ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_outlined,
              size: 30,
              color: Colors.grey.shade100,
            ),
          ),
          CartCounterIcon(iconColor: Colors.grey.shade100),
          const SizedBox(width: 10)
        ],
      ),
    );
  }
}
