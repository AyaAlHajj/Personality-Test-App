import 'package:flutter/material.dart';
import 'package:personality_test_app/Personalirty_test_app.dart';
import 'package:personality_test_app/screens/start_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return PersonalityTestApp();
  }
}
