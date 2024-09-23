import 'package:flutter/material.dart';
import 'package:quiz_app/styles/theme.dart';
import 'package:quiz_app/views/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.main,
      home: Home(),
    );
  }
}
