import 'package:flutter/material.dart';

class ConsumerTab extends StatelessWidget {
  const ConsumerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "No Consumer Yet!",
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(),
            )
          ],
        ),
      ),
    );
  }
}
