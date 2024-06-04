import 'package:energy_trade/utils/constants/colors.dart';
import 'package:energy_trade/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';

class ETabBar extends StatelessWidget implements PreferredSizeWidget {
  const ETabBar({
    super.key,
    required this.tabs,
  });

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade300,
      child: TabBar(
        tabAlignment: TabAlignment.center,
        dividerColor: Colors.grey.withOpacity(0.2),
        tabs: tabs,
        isScrollable: true,
        indicatorColor: CcColors.primary,
        labelColor: CcColors.primary,
        unselectedLabelColor: Colors.black,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CcDeviceUtils.getAppBarHeight());
}
