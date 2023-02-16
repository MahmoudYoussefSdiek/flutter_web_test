import 'package:flutter/material.dart';
import 'package:web_test/helpers/responsiveness.dart';
import 'package:web_test/widgets/horizontal_menu_item.dart';
import 'package:web_test/widgets/vertical_menu_item.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);
  final String itemName;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomScreen(context)) {
      return VerticalMenuItem(itemName: itemName, onTap: onTap);
    } else {
      return HorizontalMenuItem(itemName: itemName, onTap: onTap);
    }
  }
}
