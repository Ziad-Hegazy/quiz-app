import 'package:flutter/material.dart';
import 'package:quiz_app/main.dart';
import 'package:quiz_app/models/profile.dart';
import 'package:quiz_app/styles/font.dart';
import 'package:quiz_app/views/home.dart';
import 'package:quiz_app/widgets/brief.dart';

class Results extends StatelessWidget {
  Results({super.key, required this.numOfQuestions});
  int numOfQuestions;

  void finish(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return const MainApp();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff86948F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Brief(
              title: 'Congratulations',
              text: 'hello ' + Profile.name + ' YOUR SCORE IS',
              children: [
                Text(
                  Profile.score.toString() + '/' + numOfQuestions.toString(),
                  style: AppTextStyles.briefLargeText,
                )
              ],
              buttonText: 'finish',
              action: () {
                finish(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
