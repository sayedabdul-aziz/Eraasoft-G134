import 'package:flutter/material.dart';

class CallAction extends StatelessWidget {
  const CallAction({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.indigoAccent.withValues(alpha: .5),
        borderRadius: BorderRadius.circular(15),
        // gradient: LinearGradient(
        //   end: AlignmentGeometry.center,
        //   begin: AlignmentGeometry.topCenter,
        //   colors: [Colors.indigo, Colors.white],
        // ),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.indigo,
        //     spreadRadius: 1,
        //     blurRadius: 10,
        //     offset: Offset(0, 5),
        //   ),
        // ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.call, color: Colors.black),
          Text(text, style: TextStyle(color: Colors.black)),
        ],
      ),
    );
  }
}
