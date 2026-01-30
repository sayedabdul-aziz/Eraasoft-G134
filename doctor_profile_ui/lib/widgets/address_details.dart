import 'package:doctor_profile_ui/widgets/details_tile.dart';
import 'package:flutter/material.dart';

class AddressDetails extends StatelessWidget {
  const AddressDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.indigoAccent.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        spacing: 10,
        children: [
          DetailsTile(
            icon: Icons.local_hospital,
            text: 'International Medical Hospital',
          ),
          DetailsTile(
            icon: Icons.watch_later_outlined,
            text: 'Mon - Fri, 9:00 AM - 5:00 PM',
          ),
          DetailsTile(
            icon: Icons.location_on,
            text: 'International Medical Hospital',
          ),
        ],
      ),
    );
  }
}
