import 'package:bmi_calculator/core/colors.dart';
import 'package:flutter/material.dart';

class CounterCard extends StatelessWidget {
  const CounterCard({
    super.key,
    required this.text,
    required this.count,
    required this.onAdd,
    required this.onRemove,
  });

  final String text;
  final int count;
  final Function() onAdd;
  final Function() onRemove;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 5,
          children: [
            Text(
              text,
              style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
            ),
            Text(
              count.toString(),
              style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.greyColor,
                  ),
                  onPressed: onRemove,
                  icon: Icon(Icons.remove, color: AppColors.whiteColor),
                ),
                IconButton(
                  style: IconButton.styleFrom(
                    backgroundColor: AppColors.greyColor,
                  ),
                  onPressed: onAdd,
                  icon: Icon(Icons.add, color: AppColors.whiteColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
