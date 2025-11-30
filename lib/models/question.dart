import 'package:personality_test_app/models/answers.dart';

class Question{
  const Question({
    required this.text,
    required this.answers,
  });
  
  final String text;
  final List<Answer> answers;
}