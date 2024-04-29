import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:energy_trade/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ChangeName extends StatelessWidget {
  const ChangeName({super.key});

  @override
  Widget build(BuildContext context) {
    // controller

    // scaffold
    return Scaffold(
      backgroundColor: CcColors.secondary,
      // appbar
      appBar: AppBar(
        automaticallyImplyLeading: true,
        centerTitle: true,
        title: Text(
          'Change Name',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),

      // padding body
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Text(
              "Use real name for easy verification. This name will appear on several pages.",
              style: Theme.of(context).textTheme.labelMedium,
            ),

            const SizedBox(height: CcSizes.spaceBtnSections),

            // textfields and buttons form
            Form(
              child: Column(
                children: [
                  // first name
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: CcTexts.firstName,
                      prefixIcon: Icon(
                        Icons.person_rounded,
                      ),
                    ),
                    expands: false,
                  ),

                  const SizedBox(height: CcSizes.spaceBtnItems_1),

                  // last name
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: CcTexts.firstName,
                      prefixIcon: Icon(
                        Icons.person_rounded,
                      ),
                    ),
                    expands: false,
                  ),
                ],
              ),
            ),
            const SizedBox(height: CcSizes.spaceBtnSections),

            // saave button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("save"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
