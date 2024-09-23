import 'package:flutter/material.dart';
import 'package:quiz_app/models/profile.dart';
import 'package:quiz_app/models/questions_controller.dart';
import 'package:quiz_app/styles/font.dart';
import 'package:quiz_app/views/quiz_view.dart';
import 'package:quiz_app/widgets/brief.dart';

class Home extends StatelessWidget {
  Home({super.key});
  TextEditingController fieldController = TextEditingController();
  final BoxShadow _shadow = const BoxShadow(
    color: Colors.black38,
    offset: Offset(0, 5),
    spreadRadius: -15,
    blurRadius: 7,
  );

  void submit(BuildContext context) {
    Profile.name = fieldController.text;
    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return QuizView();
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff86948F),
      body: Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20.0,
              children: [
                Text(
                  'QUIZ',
                  style: AppTextStyles.title,
                ),
                SizedBox(
                  width: 250.0,
                  height: 250.0,
                  child: Image.asset(
                    'assets/images/illustration.png',
                  ),
                ),
                Brief(
                  title: 'Welcome',
                  text: 'Please enter your name',
                  buttonText: 'Submit',
                  action: () {
                    submit(context);
                  },
                  children: [
                    TextFormField(
                      controller: fieldController,
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
