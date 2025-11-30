import 'package:flutter/material.dart';
import 'package:personality_test_app/data/questions_list.dart';

class QuestionScreen extends StatelessWidget {
  const QuestionScreen({required this.questionIndex, required this.onSelectAnswer, super.key});

  final int questionIndex;
  final void Function(String personality) onSelectAnswer;

  @override
  Widget build(BuildContext context) {
    final currentQuestion = questionsList[questionIndex];

    return Padding(
      padding: const EdgeInsets.all(40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            currentQuestion.text,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              )
          ),

          const SizedBox(height: 25),
          
          ...currentQuestion.answers.map((answer) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),

              child: ElevatedButton(

                onPressed: () {
                  onSelectAnswer(answer.personality);
                },

                child: Text(answer.text)

              ),
            );
          }).toList(),
        ],
      ),
    );
  }
}