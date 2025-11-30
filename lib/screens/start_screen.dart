import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final void Function() startTest;
  const StartScreen(this.startTest, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Discover Your Personality Type!',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              )),

          SizedBox(height: 30),
          
          Text('💖 🗺',
            style: TextStyle(
              fontSize: 30,
            ),
          ),

          Text('📅 🧠',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          
          SizedBox(height: 35),
          ElevatedButton(onPressed: startTest, child: Text('Start Test')),

        ],
      )
      );
  }
}