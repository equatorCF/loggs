// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:login/Utils1/QuizColors.dart';
import 'package:url_launcher/url_launcher.dart';

class RepoButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppButton(
      text: 'Check out the Repo',
      color: quiz_colorPrimary,
      textStyle: boldTextStyle(color: Colors.white),
      shapeBorder: RoundedRectangleBorder(borderRadius: radius(10)),
      onTap: () {
        launch("https://github.com/muhammad-fiaz/QuizApp-Flutter");
      },
    );
  }
}
