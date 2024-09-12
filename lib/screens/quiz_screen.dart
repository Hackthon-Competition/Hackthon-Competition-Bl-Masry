import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'quiz_provider.dart'; // Import the provider

class QuizScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final quizProvider = Provider.of<QuizProvider>(context);
    final totalQuestions = quizProvider.questions.length;
    final currentQuestion = quizProvider.currentQuestionIndex + 1;
    final selectedOptionIndex = quizProvider.selectedOptionIndex;

    return Scaffold(
      appBar: AppBar(
        title: Text('الترفيه والأسئلة', style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xFF9B1B1C),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          textDirection: TextDirection.rtl,
          children: [
            // Progress Bar at the top
            LinearProgressIndicator(
              value: currentQuestion / totalQuestions, // Progress based on current question
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Color(0xFF9B1B1C)), // Progress color
            ),
            SizedBox(height: 20),
            // Display the current question
            Text(
              quizProvider.questions[quizProvider.currentQuestionIndex].questionText,
              style: TextStyle(fontSize: 24, color: Colors.black87), // Demure text color
            ),
            SizedBox(height: 20),

            // Choices in a row with a cute shape
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: quizProvider.questions[quizProvider.currentQuestionIndex].options.asMap().entries.map((entry) {
                int idx = entry.key;
                String option = entry.value;
                bool isSelected = selectedOptionIndex == idx;
                bool isCorrect = idx == quizProvider.questions[quizProvider.currentQuestionIndex].correctAnswerIndex;
                return Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OutlinedButton(
                      onPressed: () {
                        quizProvider.checkAnswer(idx);
                      },
                      style: OutlinedButton.styleFrom(
                        backgroundColor: isSelected
                            ? (isCorrect ? Colors.green : Color(0xFF9B1B1C)) // Change background color based on selection
                            : Colors.transparent,
                        side: BorderSide(color: Colors.grey.shade300), // Soft border color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20), // Cute round shape
                        ),
                        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                      ),
                      child: Text(
                        option,
                        style: TextStyle(
                          fontSize: 17,
                          color: isSelected ? Colors.white : Colors.black87, // Change text color based on selection
                        ),
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20),

            // Show feedback after answering
            Text(
              quizProvider.feedback,
              style: TextStyle(fontSize: 18, color: Colors.red),
              textDirection: TextDirection.rtl,
            ),
            SizedBox(height: 20),

            // Navigation buttons (Back and Next)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: quizProvider.previousQuestion, // Go to the previous question
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, // Transparent button
                    side: BorderSide(color: Colors.blue), // Soft blue border
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                  ),
                  child: Text(
                    'السابق',
                    style: TextStyle(color: Colors.blue,
                    fontSize: 19,), // Blue text color
                  ),
                ),
                ElevatedButton(
                  onPressed: quizProvider.nextQuestion,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent, // Transparent button
                    side: BorderSide(color: Color(0xFF9B1B1C)), // Red border
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 32),
                  ),
                  child: Text(
                    ' التالي',
                    style: TextStyle(color: Color(0xFF9B1B1C),
                    fontSize: 19,), // Red text color
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),

            // Cute score display on the side
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFE4E1), // Light pinkish background
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey.shade300), // Soft border
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.amber), // Cute star icon
                    SizedBox(width: 8),
                    Text(
                      'النقاط: ${quizProvider.score}',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.black87,
                      ),
                      textDirection: TextDirection.rtl,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
