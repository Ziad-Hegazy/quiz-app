class Question {
  String? text;
  int? correctIndex;
  int? chosenIndex;
  List<String>? choices = [];

  Question({this.text, this.correctIndex, this.choices});

  bool isCorrect() {
    return chosenIndex == correctIndex;
  }
}
