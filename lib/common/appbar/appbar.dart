import 'package:energy_trade/utils/devices/device_utility.dart';
import 'package:flutter/material.dart';

class CcAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CcAppBar({
    super.key,
    this.title,
    this.actions,
    this.leading,
    this.centerTitle = false,
    this.padding = const EdgeInsets.only(left: 5, right: 5),
    this.automaticallyImplyLeading = false,
    this.iconThemeData = const IconThemeData(color: Colors.black),
  });

  final Widget? title;
  final bool automaticallyImplyLeading, centerTitle;
  final Widget? leading;
  final List<Widget>? actions;
  final EdgeInsets padding;
  final IconThemeData iconThemeData;

  @override
  Widget build(BuildContext context) {
    // controller instantiation

    // padding
    return Padding(
      padding: padding,
      child: AppBar(
        automaticallyImplyLeading: automaticallyImplyLeading,
        iconTheme: iconThemeData,
        leading: leading,
        title: title,
        centerTitle: centerTitle,
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(CcDeviceUtils.getAppBarHeight());
}
