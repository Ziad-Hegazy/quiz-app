import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_controller.dart';
import 'package:quiz_app/styles/font.dart';
import 'package:quiz_app/views/results.dart';
import 'package:quiz_app/widgets/question_card.dart';

class QuizView extends StatefulWidget {
  QuizView({
    super.key,
  });
  @override
  State<QuizView> createState() => _QuizViewState();
}

class _QuizViewState extends State<QuizView> {
  QuestionsController questionsController = QuestionsController();
  int index = -1;
  void next() {
    if (index < 2) {
      setState(() {});
    } else {
      questionsController.setScore();
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return Results(
          numOfQuestions: questionsController.questions.length,
        );
      }));
    }
  }

  @override
  Widget build(BuildContext context) {
    index++;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 40,
        backgroundColor: Color(0xff86948F),
        title: Text(
          'QUIZ',
          style: AppTextStyles.titleSmall,
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
                height: 200,
                width: 200,
                child: Image.asset('assets/images/illustration.png')),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: QuestionCard(
                question: questionsController.questions[index],
                counter: index + 1,
                action: next,
                numOfQuestions: questionsController.questions.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
