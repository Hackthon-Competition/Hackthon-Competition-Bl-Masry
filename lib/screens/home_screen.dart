import 'package:flutter/material.dart';
import 'quran_screen.dart';
import 'arabic_learning_screen.dart';
import 'quiz_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'نور الضاد',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: const Color.fromARGB(255, 117, 7, 7)),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 202, 56),
        ),
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: AssetImage("assets/images/pyramids.jpg"),
            fit: BoxFit.cover,
          )),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => QuranScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 139, 15, 15)),
                    child: Text(
                      'القرآن الكريم',
                      style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 232, 249, 86)),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ArabicLanguageScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 139, 15, 15)),
                    child: Text(
                      'تعليم اللغة العربية',
                      style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 232, 249, 86)),
                    ),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => QuizScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 139, 15, 15)),
                    child: Text(
                      'الترفيه والأسئلة',
                      style: TextStyle(
                          fontSize: 20,
                          color: const Color.fromARGB(255, 232, 249, 86)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
