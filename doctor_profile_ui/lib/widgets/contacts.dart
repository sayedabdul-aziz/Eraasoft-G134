import 'package:doctor_profile_ui/widgets/details_tile.dart';
import 'package:flutter/material.dart';

class ContactsCard extends StatelessWidget {
  const ContactsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contacts',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.indigoAccent.withValues(alpha: 0.2),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            spacing: 10,
            children: [
              DetailsTile(icon: Icons.email_rounded, text: 'zHbE1@example.com'),
              DetailsTile(icon: Icons.call, text: '+123 456 7890'),
              DetailsTile(icon: Icons.call, text: '+123 456 7890'),
            ],
          ),
        ),
      ],
    );
  }
}
