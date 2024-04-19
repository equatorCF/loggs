import 'package:flutter/material.dart';
import 'package:login/Screens1/RepoScreen.dart';
import 'package:login/model2/QuizModels.dart';
import 'package:login/utils1/QuizColors.dart';
import 'package:login/utils1/QuizDataGenerator.dart';

class QuizSearch extends StatefulWidget {
  static String tag = '/QuizSearch';

  @override
  _QuizSearchState createState() => _QuizSearchState();
}

class _QuizSearchState extends State<QuizSearch> {
  late List<NewQuizModel> mListings;
  var searchCont = TextEditingController();

  @override
  void initState() {
    super.initState();
    mListings = getQuizData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: quiz_app_background,
      body: RepoScreen(enableAppbar: true),
    );
  }
}
