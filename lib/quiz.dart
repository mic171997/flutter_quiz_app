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

  var activeScreen = 'start-screen';

//   Widget? activeScreen;

//  void initState() {
//   activeScreen =  StartScreen(switchScreen);
// super.initState();
//   }

  void switchScreen() {

    setState(() {
      activeScreen = 'question-screen';
    });
  }
  @override
  Widget build(BuildContext context) {
    // var screenWidjet = activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionScreen();
     Widget screenWidjet = StartScreen(switchScreen);

if ( activeScreen == 'question-screen') {
 screenWidjet = QuestionScreen();

}
     
    return MaterialApp( home: Scaffold(body: Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(colors: [
        Color.fromARGB(255, 178, 204, 235),
          Color.fromARGB(255, 14, 71, 137),
    ],
      begin: startAlignment,
          end: endAlignment,
     ),
    ), 
    child: screenWidjet ,),
      ),
      );
  }
}