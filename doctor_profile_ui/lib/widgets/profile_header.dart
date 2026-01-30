import 'package:doctor_profile_ui/widgets/call_action.dart';
import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ClipOval(
          child: Image.network(
            'https://static.vecteezy.com/system/resources/thumbnails/050/817/819/small/happy-smiling-male-doctor-with-hand-present-something-empty-space-standing-isolate-on-transparent-background-png.png',
            width: 140,
            height: 140,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dr. Tarek Ali Tarek Ali Ali',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigoAccent,
                ),
              ),
              SizedBox(height: 5),
              Text('Dentist', style: TextStyle(fontSize: 16)),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber, size: 16),
                  Text('4.9 (124 Reviews)', style: TextStyle(fontSize: 14)),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  CallAction(text: '1'),
                  SizedBox(width: 10),
                  CallAction(text: '2'),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
