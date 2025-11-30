import 'dart:math';
import 'package:flutter/material.dart';
import 'package:personality_test_app/models/personality.dart';

class ResultScreen extends StatelessWidget {
  final void Function() restartTest;
  final List<String> chosenAnswers;
  const ResultScreen({required this.restartTest, required this.chosenAnswers, super.key});


  @override
  Widget build(BuildContext context) {
    int feelerCount = 0, thinkerCount = 0, plannerCount = 0, adventurerCount = 0;
    for (var answer in chosenAnswers) {
      if (answer == 'Feeler') {
        feelerCount++;
      } else if (answer == 'Thinker') {
        thinkerCount++;
      } else if (answer == 'Planner') {
        plannerCount++;
      } else if (answer == 'Adventurer') {
        adventurerCount++;
      }
    }

    int maxCount = max(feelerCount, max(thinkerCount, max(plannerCount, adventurerCount)));
    String resultMessage = '';
    
    if (maxCount == feelerCount)
      resultMessage = message[Personality.Feeler]!;
      
    else if (maxCount == thinkerCount)
      resultMessage = message[Personality.Thinker]!;

    else if (maxCount == plannerCount)
      resultMessage = message[Personality.Planner]!;

    else if (maxCount == adventurerCount)
      resultMessage = message[Personality.Adventurer]!;

    
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      
      children: [
        Text(resultMessage,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),

        const SizedBox(height: 35),

        ElevatedButton(onPressed: restartTest, child: const Text('Restart Test')),
      ],
    );
  }
}