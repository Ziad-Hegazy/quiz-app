import 'package:flutter/material.dart';
import 'package:quiz_app/styles/font.dart';

class Brief extends StatelessWidget {
  void Function()? action;
  String? title = '';
  String? text = '';
  String? buttonText = '';
  List<Widget>? children = [];
  List<Widget>? _children = [];
  final BoxShadow _shadow = const BoxShadow(
    color: Colors.black38,
    offset: Offset(0, 5),
    blurRadius: 7,
  );
  Brief({
    super.key,
    this.title,
    this.text,
    this.buttonText,
    this.action,
    this.children,
  });

  @override
  Widget build(BuildContext context) {
    _children!.add(Text(
      text!,
      style: AppTextStyles.briefText,
    ));
    _children!.add(
      SizedBox(
        height: 20,
      ),
    );
    if (children != null) {
      _children!.addAll(children!);
      _children!.add(
        SizedBox(
          height: 20,
        ),
      );
    }
    _children!.add(ElevatedButton(
      onPressed: action,
      child: Text(buttonText!),
    ));
    return Stack(
      alignment: Alignment.center,
      children: [
        //Card
        Padding(
          padding: EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.only(left: 40, right: 40, top: 30, bottom: 20),
            decoration: BoxDecoration(
              boxShadow: [_shadow],
              color: Color(0xffABBFB8),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Column(
              children: _children!,
            ),
          ),
        ),
        //Title
        Positioned(
          top: 10.0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
              boxShadow: [_shadow],
              color: Color(0xffB8E893),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(11),
            ),
            child: Text(
              title!,
              style: AppTextStyles.briefTitle,
            ),
          ),
        ),
      ],
    );
  }
}
