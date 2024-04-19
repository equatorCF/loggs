// ignore_for_file: unnecessary_import, use_key_in_widget_constructors, unused_import

import 'package:flutter/material.dart';
import 'package:login/Screens1/QuizAllList.dart';
import 'package:login/Screens1/QuizSignIn.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:login/Utils1/AppWidget.dart';

import 'package:login/onBoardingScreen/views/onBoardingScreen.dart';

class QuizSplashScreen extends StatefulWidget {
  @override
  _QuizSplashScreenState createState() => _QuizSplashScreenState();
}

class _QuizSplashScreenState extends State<QuizSplashScreen> {
  @override
  void initState() {
    super.initState();
    init();
  }

  void init() async {
    // Add logic to check if onboarding is complete
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool onboardingComplete = prefs.getBool('onboarding_complete') ?? false;

    if (onboardingComplete) {
      await 3.seconds.delay.then((value) => push(QuizAllList(),
          pageRouteAnimation: PageRouteAnimation.Slide, isNewTask: true));
    } else {
      // ignore: prefer_const_constructors
      await 3.seconds.delay.then((value) => push(onBoardingScreenHome(),
          pageRouteAnimation: PageRouteAnimation.Slide, isNewTask: true));
    }
  }

  @override
  void setState(fn) {
    if (mounted) super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            commonCacheImageWidget("assets/images/ic_background.png",
                height: 250, width: 250),
          ],
        ).withWidth(context.width()),
      ),
    );
  }
}
