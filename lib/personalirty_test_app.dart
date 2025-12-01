import 'package:flutter/material.dart';
import 'package:personality_test_app/data/questions_list.dart';
import 'package:personality_test_app/models/personality.dart';
import 'package:personality_test_app/screens/question_screen.dart';
import 'package:personality_test_app/screens/result_screen.dart';
import 'package:personality_test_app/screens/start_screen.dart';

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({super.key});

  @override
  State<PersonalityTestApp> createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  String activeScreenName = 'start-screen';
  int currentQuestionIndex = 0;
  List<String> chosenAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreenName = 'question-screen';
    });
  }

  void restartTest() {
    setState(() {
      activeScreenName = 'start-screen';
      currentQuestionIndex = 0;
      chosenAnswers = [];
    });
  }

  void chooseAnswer(Personality personality) {
    chosenAnswers.add(personality.name);

    if (currentQuestionIndex + 1 < questionsList.length) {
      setState(() {
        currentQuestionIndex++;
        personalityResult[personality] = personalityResult[personality]! + 1;
      });
    } 
    
    else {
      setState(() {
        activeScreenName = 'result-screen';
      });
    }
  }

  Map<Personality, int> personalityResult = {
    Personality.Feeler: 0,
    Personality.Thinker: 0,
    Personality.Planner: 0,
    Personality.Adventurer: 0,
  };
  
  @override
  Widget build(BuildContext context) {

    Widget activeScreen = StartScreen(switchScreen);

    if (activeScreenName == 'question-screen') {
      activeScreen = QuestionScreen(
        questionIndex: currentQuestionIndex,
        onSelectAnswer: chooseAnswer,
      );
    }

    if(activeScreenName == 'result-screen'){
      activeScreen = ResultScreen(
        personalityResult: personalityResult, 
        restartTest: restartTest, 
        chosenAnswers: chosenAnswers,);
    }


    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        backgroundColor: Colors.purple[100],
        body: Center(
          child: activeScreen,
        ),
      ),
    );
  }
}