import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/constants/sizes.dart';
import 'package:energy_trade/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class ChangePhoneNumber extends StatelessWidget {
  const ChangePhoneNumber({super.key});

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
          'Change Phone Number',
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
              "Use real phone number for proper verification. This number will appear on several pages and transaction process.",
              style: Theme.of(context).textTheme.labelMedium,
            ),

            const SizedBox(height: CcSizes.spaceBtnSections),

            // textfields and buttons form
            Form(
              child: Column(
                children: [
                  // phone number
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: CcTexts.phoneNo,
                      prefixIcon: Icon(
                        Icons.smartphone_rounded,
                      ),
                    ),
                    expands: false,
                  ),
                ],
              ),
            ),
            const SizedBox(height: CcSizes.spaceBtnSections),

            // save button
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
