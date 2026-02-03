import 'package:bmi_calculator/core/colors.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  const GenderCard({
    super.key,
    required this.text,
    required this.icon,
    required this.onTap,
    required this.isSelected,
  });

  final String text;
  final IconData icon;
  final Function() onTap;
  final bool isSelected;

  Color getColor() {
    if (isSelected) {
      return AppColors.primaryColor;
    } else {
      return AppColors.cardColor;
    }
  }

  //String ay7aga = (condition) ? "valueIfTrue" : "valueIfFalse"

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: (isSelected) ? AppColors.primaryColor : AppColors.cardColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, color: AppColors.whiteColor, size: 80),
              Text(
                text,
                style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
