import 'package:flutter/material.dart';

class DetailsTile extends StatelessWidget {
  const DetailsTile({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 16,
          backgroundColor: Colors.indigoAccent,
          child: Icon(icon, color: Colors.white),
        ),
        SizedBox(width: 10),
        Expanded(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(text, style: TextStyle(fontSize: 16)),
          ),
        ),
      ],
    );
  }
}
