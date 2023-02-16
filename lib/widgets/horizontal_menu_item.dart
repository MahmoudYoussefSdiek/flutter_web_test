import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_test/constants/controllers.dart';
import 'package:web_test/constants/style.dart';
import 'package:web_test/widgets/custom_text.dart';

class HorizontalMenuItem extends StatelessWidget {
  const HorizontalMenuItem(
      {Key? key, required this.itemName, required this.onTap})
      : super(key: key);
  final String itemName;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName)
            : menuController.onHover('Not Hovering');
      },
      child: Obx(
        () => Container(
          color: menuController.isHovering(itemName)
              ? lightGray.withOpacity(0.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovering(itemName) ||
                    menuController.isActive(itemName),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
                child: Container(
                  width: 6,
                  height: 40,
                  color: dark,
                ),
              ),
              SizedBox(
                width: width / 80,
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: menuController.returnIconFor(itemName),
              ),
              if (!menuController.isActive(itemName))
                Flexible(
                  child: CustomText(
                    text: itemName,
                    color:
                        menuController.isHovering(itemName) ? dark : lightGray,
                  ),
                )
              else
                Flexible(
                  child: CustomText(
                    text: itemName,
                    color: dark,
                    size: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
