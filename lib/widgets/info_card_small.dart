import 'package:flutter/material.dart';
import 'package:web_test/constants/style.dart';
import 'package:web_test/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  const InfoCardSmall(
      {Key? key,
      required this.title,
      required this.value,
      this.isActive = false,
      required this.onTap})
      : super(key: key);
  final String title;
  final String value;
  final bool isActive;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: isActive ? active : lightGray,
              width: 0.5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                size: 24,
                fontWeight: FontWeight.w300,
                color: isActive ? active : lightGray,
              ),
              CustomText(
                text: value,
                size: 24,
                fontWeight: FontWeight.bold,
                color: isActive ? active : lightGray,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
