import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:web_test/constants/controllers.dart';
import 'package:web_test/helpers/responsiveness.dart';
import 'package:web_test/pages/overview/widgets/overview_cards_large.dart';
import 'package:web_test/pages/overview/widgets/overview_cards_medium.dart';
import 'package:web_test/pages/overview/widgets/overview_cards_small.dart';
import 'package:web_test/widgets/custom_text.dart';

class OverViewPage extends StatelessWidget {
  const OverViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Obx(
          () => Row(
            children: [
              Container(
                margin: EdgeInsets.only(
                    top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                child: CustomText(
                  text: menuController.activeItem.value,
                  size: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomScreen(context))
                  const OverViewCardsMediumScreen()
                else
                  const OverViewCardsLargeScreen()
              else
                const OverViewCardsSmallScreen()
            ],
          ),
        ),
      ],
    );
  }
}
