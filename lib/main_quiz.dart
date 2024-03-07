import 'package:flutter/material.dart';
import 'component/question_bank.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    ),
  );
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  Icon tick = const Icon(
    Icons.check,
    color: Colors.green,
  );
  Icon wrong = const Icon(
    Icons.close,
    color: Colors.red,
  );
  QuestionBank questions = QuestionBank();

  List<Icon> scorekeeper = [];

  buttonPressed(answerSent) {
    if (!questions.isAllQuestionAnswered) {
      if (questions.isAnswerCorrect(answerSent)) {
        setState(() {
          scorekeeper.add(tick);
        });
      } else {
        setState(() {
          scorekeeper.add(wrong);
        });
      }
      questions.nextQuestion();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Center(
            child: Text(
              questions.getQuestion(),
              textAlign: TextAlign.center,
              style:
                  const TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            buttonPressed(true);
          },
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Colors.green),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(5.0), // Set the border radius to 0
                ),
              )),
          child: const Text(
            "True",
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        TextButton(
          onPressed: () {
            buttonPressed(false);
          },
          style: ButtonStyle(
              backgroundColor: const MaterialStatePropertyAll(Colors.red),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(5.0), // Set the border radius to 0
                ),
              )),
          child: const Text(
            "False",
            style: TextStyle(color: Colors.white, fontSize: 25.0),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Row(
          children: scorekeeper,
        )
      ],
    );
  }
}
