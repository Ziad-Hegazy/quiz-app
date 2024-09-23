import 'package:quiz_app/models/profile.dart';
import 'package:quiz_app/models/question.dart';

class QuestionsController {
  List<Question> questions = [];
  void setScore() {
    Profile.score = questions.where((q) => q.isCorrect()).length;
  }

  QuestionsController() {
    questions = [];
    questions.add(Question(
      text: 'The world largest desert is ?',
      choices: ['Thar', 'Kalahari', 'Sahara', 'Sonoron'],
      correctIndex: 2,
    ));
    questions.add(Question(
      text: 'The metal whose salts are sensitive to light is ?',
      choices: ['ZInc', 'Silver', 'Copper', 'Aluminium'],
      correctIndex: 1,
    ));
    questions.add(Question(
      text: 'The Central Rice Researchb Station is situated in ?',
      choices: [
        'Programming Language',
        'JDK',
        'Open Source Software',
        'None of the above'
      ],
      correctIndex: 3,
    ));
  }
}
