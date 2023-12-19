import 'package:flutter/material.dart';
import 'package:simple_quiz_app/question_screen.dart';
import 'package:simple_quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _Quizstate();
  }
}

class _Quizstate extends State<Quiz> {
  // Widget? activeScreen;
  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }
  var activeScreen = 'start-screen';
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 139, 82, 238),
              Color.fromARGB(255, 83, 59, 125),
            ]),
          ),
          child: screenWidget,
        ),
      ),
    );
  }
}
