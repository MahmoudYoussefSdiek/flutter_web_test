import 'package:flutter/material.dart';
import 'package:web_test/widgets/info_card_small.dart';

class OverViewCardsSmallScreen extends StatelessWidget {
  const OverViewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      height: 400,
      child: Column(
        children: [
          InfoCardSmall(
            title: 'Rides in progress',
            value: '7',
            onTap: () {},
            isActive: true,
          ),
          SizedBox(
            height: width / 64,
          ),
          InfoCardSmall(
            title: 'Package delivered',
            value: '17',
            onTap: () {},
            isActive: true,
          ),
          SizedBox(
            height: width / 64,
          ),
          InfoCardSmall(
            title: 'Cancelled delivery',
            value: '3',
            onTap: () {},
          ),
          SizedBox(
            height: width / 64,
          ),
          InfoCardSmall(
            title: 'Scheduled deliveries',
            value: '3',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
