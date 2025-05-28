import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
import 'package:quiz_app/start_screen.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> selectAnswers = [];
  var activeScreen = 'start-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectAnswers.add(answer);
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidjet = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidjet = QuestionScreen(onSelectAnswer: chooseAnswer);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 178, 204, 235),
                Color.fromARGB(255, 14, 71, 137),
              ],
              begin: startAlignment,
              end: endAlignment,
            ),
          ),
          child: screenWidjet,
        ),
      ),
    );
  }
}
