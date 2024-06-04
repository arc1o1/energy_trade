import 'package:energy_trade/common/drawer/drawer_list.dart';
import 'package:energy_trade/common/drawer/header_drawer.dart';
import 'package:flutter/material.dart';

class CcDrawer extends StatelessWidget {
  const CcDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.zero,
          child: const Column(
            children: [
              HeaderDrawer(),
              DrawerList(),
            ],
          ),
        ),
      ),
    );
  }
}
