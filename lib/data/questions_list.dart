
import 'package:personality_test_app/models/answers.dart';
import 'package:personality_test_app/models/question.dart';

const questionsList = [
Question(
  text: 'How do you approach a difficult decision?',
  answers: [
    Answer(text: 'Analyze all options logically', personality: 'Thinker'),
    Answer(text: 'Go with what feels right emotionally', personality: 'Feeler'),
    Answer(text: 'Make a checklist and plan it out', personality: 'Planner'),
    Answer(text: 'Take a leap and deal with results later', personality: 'Adventurer'),
  ],
),


Question(
  text: "What excites you the most?",
  answers: [
    Answer(text: "Solving complex problems", personality: "Thinker"),
    Answer(text: "Connecting deeply with others", personality: "Feeler"),
    Answer(text: "Creating a clear path to your goals", personality: "Planner"),
    Answer(text: "Exploring something new", personality: "Adventurer"),
  ],
),


Question(
  text: "Which best describes your work style?",
  answers: [
    Answer(text: "Detail-focused and logical", personality: "Thinker"),
    Answer(text: "People-centered and intuitive", personality: "Feeler"),
    Answer(text: "Organized and systematic", personality: "Planner"),
    Answer(text: "Flexible and spontaneous", personality: "Adventurer"),
  ],
),


Question(
  text: "How do you recharge after a long day?",
  answers: [
    Answer(text: "Quiet reflection or reading", personality: "Thinker"),
    Answer(text: "Spending time with close friends", personality: "Feeler"),
    Answer(text: "Planning tomorrow's tasks", personality: "Planner"),
    Answer(text: "Doing something active or exciting", personality: "Adventurer"),
 ],
),

Question(
  text: "You're most comfortable when...",
  answers: [
    Answer(text: "Things make logical sense", personality: "Thinker"),
    Answer(text: "Everyone is getting along", personality: "Feeler"),
    Answer(text: "There's a clear structure", personality: "Planner"),
    Answer(text: "You're free to try new things", personality: "Adventurer"),
  ],
),


Question(
  text: "Your biggest strength is...",
  answers: [
    Answer(text: "Thinking critically", personality: "Thinker"),
    Answer(text: "Empathizing with others", personality: "Feeler"),
    Answer(text: "Staying organized", personality: "Planner"),
    Answer(text: "Being adventurous", personality: "Adventurer"),
  ],
),
];
