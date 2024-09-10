import 'package:flutter/material.dart';

class EntertainmentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('الترفيه والأسئلة'),
      ),
      body: Center(
        child: Text(
          'محتوى الترفيه والأسئلة سيظهر هنا.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
