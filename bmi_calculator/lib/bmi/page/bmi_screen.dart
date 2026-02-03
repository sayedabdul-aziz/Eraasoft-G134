import 'package:bmi_calculator/bmi/page/result_screen.dart';
import 'package:bmi_calculator/bmi/widgets/counter_card.dart';
import 'package:bmi_calculator/bmi/widgets/gender_card.dart';
import 'package:bmi_calculator/bmi/widgets/height_card.dart';
import 'package:bmi_calculator/core/colors.dart';
import 'package:flutter/material.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  int age = 22;
  int weight = 60;
  int height = 170;
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: Text(
          'BMI Calculator',
          style: TextStyle(color: AppColors.whiteColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          children: [
            genderSelection(),
            heightSelection(),
            weightAndAge(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.primaryColor,
                minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              onPressed: () {
                // Calculate BMI and navigate to ResultScreen
                // BMI = weight / (height/100 * height/100)
                double result = weight / (height * height / 10000);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultScreen(result: result),
                  ),
                );
              },
              child: Text(
                'Calculate',
                style: TextStyle(color: AppColors.whiteColor, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded genderSelection() {
    return Expanded(
      child: Row(
        spacing: 16,
        children: [
          GenderCard(
            isSelected: isMale,
            icon: Icons.male,
            text: 'Male',
            onTap: () {
              setState(() {
                isMale = true;
              });
            },
          ),
          GenderCard(
            isSelected: !isMale,
            icon: Icons.female,
            text: 'Female',
            onTap: () {
              setState(() {
                isMale = false;
              });
            },
          ),
        ],
      ),
    );
  }

  HeightCard heightSelection() {
    return HeightCard(
      height: height,
      onChanged: (value) {
        setState(() {
          height = value.toInt();
        });
      },
    );
  }

  Expanded weightAndAge() {
    return Expanded(
      child: Row(
        spacing: 16,
        children: [
          CounterCard(
            text: 'Weight',
            count: weight,
            onAdd: () {
              setState(() {
                weight++;
              });
            },
            onRemove: () {
              if (weight > 0) {
                setState(() {
                  weight--;
                });
              }
            },
          ),
          CounterCard(
            text: 'Age',
            count: age,
            onAdd: () {
              setState(() {
                age++;
              });
            },
            onRemove: () {
              if (age > 18) {
                setState(() {
                  age--;
                });
              }
            },
          ),
        ],
      ),
    );
  }
}
