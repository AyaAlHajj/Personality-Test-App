import 'dart:math';
import 'package:flutter/material.dart';
import 'package:personality_test_app/models/personality.dart';

class ResultScreen extends StatelessWidget {
  final void Function() restartTest;
  final List<String> chosenAnswers;
  const ResultScreen({required this.personalityResult, required this.restartTest, required this.chosenAnswers, super.key});
  final Map<Personality, int> personalityResult;
 
  @override
  Widget build(BuildContext context) {
    int maxScore = max(
      personalityResult[Personality.Feeler]!, 
      max(
        personalityResult[Personality.Thinker]!, 
        max(
          personalityResult[Personality.Planner]!, 
          personalityResult[Personality.Adventurer]!
        )
      )
    );

    String resultMessage = '';

    for(var entry in personalityResult.entries){
      if(entry.value == maxScore){
        switch(entry.key){
          case Personality.Feeler:
            resultMessage = message[Personality.Feeler]!;
            break;
          case Personality.Thinker:
            resultMessage = message[Personality.Thinker]!;
            break;
          case Personality.Planner:
            resultMessage = message[Personality.Planner]!;
            break;  
          case Personality.Adventurer:
            resultMessage = message[Personality.Adventurer]!;
            break;
        }
        break;
      }
    }
    
    
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