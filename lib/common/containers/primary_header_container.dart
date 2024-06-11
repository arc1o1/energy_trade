import 'package:energy_trade/common/curved_edges/curved_edge_widget.dart';
import 'package:energy_trade/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';

class CcPrimaryHeaderContainer extends StatelessWidget {
  const CcPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return CcCurvedEdgeWidget(
      child: Material(
        elevation: 5,
        child: Container(
          color: Colors.green,
          padding: const EdgeInsets.all(0),
          child: SizedBox(
            height: CcDeviceUtils.getScreenHeight() * .15,
            child: Stack(
              children: [child],
            ),
          ),
        ),
      ),
    );
  }
}
