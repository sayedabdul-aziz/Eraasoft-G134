import 'package:flutter/material.dart';

// BMI	Status
// < 18.5	Underweight
// 18.5 - 24.9	Healthy Weight
// 25.0 - 29.9	Overweight
// ≥ 30.0	Obese
class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.result});
  final double result;

  Status getStatus() {
    if (result < 18.5) {
      return Status('Underweight', Colors.blue);
    } else if (result <= 24.9) {
      return Status('Healthy Weight', Colors.green);
    } else if (result <= 29.9) {
      return Status('Overweight', Colors.orange);
    } else {
      return Status('Obese', Colors.red);
    }
  }

  @override
  Widget build(BuildContext context) {
    Status status = getStatus();
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text('BMI Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              status.name,
              style: TextStyle(
                fontSize: 24,
                color: status.color,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text('Your BMI Result'),
            Text(
              result.toStringAsFixed(2),
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class Status {
  final String name;
  final Color color;

  Status(this.name, this.color);
}
