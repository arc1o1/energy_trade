import 'package:energy_trade/common/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class CcCurvedEdgeWidget extends StatelessWidget {
  const CcCurvedEdgeWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CcCustomCurvedEdges(),
      child: child,
    );
  }
}
