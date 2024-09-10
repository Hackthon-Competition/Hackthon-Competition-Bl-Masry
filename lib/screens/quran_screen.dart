import 'package:flutter/material.dart';

class QuranScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('القرآن الكريم'),
      ),
      body: Center(
        child: Text(
          'محتوى القرآن الكريم سيظهر هنا.',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
