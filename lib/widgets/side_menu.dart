import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_test/constants/controllers.dart';
import 'package:web_test/constants/style.dart';
import 'package:web_test/helpers/responsiveness.dart';
import 'package:web_test/routing/routes.dart';
import 'package:web_test/widgets/custom_text.dart';
import 'package:web_test/widgets/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: width / 48,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset('assets/icons/logo.png'),
                    ),
                    Flexible(
                      child: CustomText(
                        text: 'Dash',
                        size: 20,
                        fontWeight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(
                      width: width / 48,
                    ),
                  ],
                ),
              ],
            ),
          const SizedBox(
            height: 40,
          ),
          Divider(
            color: lightGray.withOpacity(0.1),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItems
                .map(
                  (itemName) => SideMenuItem(
                    itemName: itemName == authenticationPageRoute
                        ? 'Log out'
                        : itemName,
                    onTap: () {
                      if (itemName == authenticationPageRoute) {}
                      if (!menuController.isActive(itemName)) {
                        menuController.changeActiveItemTo(itemName);
                        if (ResponsiveWidget.isSmallScreen(context)) {
                          Get.back();
                        }
                      }
                    },
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
