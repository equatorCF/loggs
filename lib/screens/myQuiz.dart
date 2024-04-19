// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:login/Screens1/QuizSplashScreen.dart';
import 'package:nb_utils/nb_utils.dart';

class Progress extends StatefulWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  State<Progress> createState() => _ProgressState();
}

class _ProgressState extends State<Progress> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      home: QuizSplashScreen(),
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
    );
  }
}
