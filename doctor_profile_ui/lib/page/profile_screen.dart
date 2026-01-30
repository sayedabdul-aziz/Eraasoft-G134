import 'package:doctor_profile_ui/widgets/address_details.dart';
import 'package:doctor_profile_ui/widgets/contacts.dart';
import 'package:doctor_profile_ui/widgets/main_button.dart';
import 'package:doctor_profile_ui/widgets/profile_header.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
        ),
        title: Text(
          'Doctor Profile',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30),
              ProfileHeader(),
              SizedBox(height: 20),
              Text(
                'About',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 20),
              AddressDetails(),
              Divider(height: 30),
              ContactsCard(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MainButton(
              text: 'Call Now',
              bgColor: Colors.green,
              onPressed: () {},
            ),
            SizedBox(height: 10),
            MainButton(text: 'Book Appointment', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
