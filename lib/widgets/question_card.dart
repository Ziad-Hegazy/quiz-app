import 'package:flutter/material.dart';
import 'package:quiz_app/models/question.dart';
import 'package:quiz_app/models/questions_controller.dart';
import 'package:quiz_app/styles/font.dart';
import 'package:quiz_app/styles/theme.dart';

class QuestionCard extends StatefulWidget {
  QuestionCard({
    super.key,
    required this.question,
    required this.counter,
    required this.action,
    required this.numOfQuestions,
  });
  int counter;
  Question question;
  void Function()? action;
  int numOfQuestions;

  @override
  State<QuestionCard> createState() => _QuestionCardState();
}

class _QuestionCardState extends State<QuestionCard> {
  int radioGroupValue = -1;

  final BoxShadow _shadow = const BoxShadow(
    color: Colors.black38,
    offset: Offset(0, 5),
    blurRadius: 7,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 20),
      decoration: BoxDecoration(
        boxShadow: [_shadow],
        color: Color(0xffB8E893),
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(width: 1.0),
              Text(
                widget.counter.toString() +
                    '/' +
                    widget.numOfQuestions.toString(),
                style: AppTextStyles.briefText,
              )
            ],
          ),
          Text(
            widget.question.text!,
            style: AppTextStyles.briefText,
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 200,
            child: ListView.builder(
              itemCount: widget.question.choices!.length,
              itemBuilder: (context, index) {
                final choice = widget.question.choices![index];
                return Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: index == radioGroupValue
                            ? Color(0xffABBFB8)
                            : Colors.white,
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(13),
                      ),
                      child: ListTile(
                        textColor: Colors.black,
                        //value: index,
                        //groupValue: radioGroupValue,
                        onTap: () {
                          radioGroupValue = index;
                          widget.question.chosenIndex = index;
                          setState(() {});
                        },
                        title: Text(
                          choice,
                          style: AppTextStyles.briefText,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                  ],
                );
              },
            ),
          ),
          SizedBox(height: 15),
          ElevatedButton(
            onPressed: widget.action,
            child: Text('Next'),
            style: AppTheme.filledButton.style,
          )
        ],
      ),
    );
  }
}
