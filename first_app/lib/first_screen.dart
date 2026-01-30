import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(Icons.menu, color: Colors.deepOrange),
        centerTitle: true,
        title: Text(
          'First Screen',
          style: TextStyle(fontSize: 22, color: Colors.deepOrange),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // do something
            },
            icon: Icon(Icons.search, color: Colors.deepOrange),
          ),
          IconButton(
            onPressed: () {
              // do something
            },
            icon: Icon(Icons.search, color: Colors.deepOrange),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch.adaptive(value: true, onChanged: (value) {}),
            // ClipOval => circular image
            // ClipRRect => rounded image
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                'assets/images/mosalah.jpg',
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Ahmed Ali",
              style: TextStyle(
                fontSize: 22,
                color: Colors.deepOrange,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 15),
            Text(
              "Flutter Developer",
              style: TextStyle(
                fontSize: 22,
                color: Colors.deepOrange,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.facebook_rounded, color: Colors.blueAccent),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.camera_alt_rounded, color: Colors.redAccent),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.telegram_rounded, color: Colors.lightBlue),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.snapchat_sharp, color: Colors.yellowAccent),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
