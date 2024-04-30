import 'package:flutter/material.dart';

class IncomeTab extends StatelessWidget {
  const IncomeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "No Income Yet!",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(),
            )
          ],
        ),
      ),
    );
  }
}
