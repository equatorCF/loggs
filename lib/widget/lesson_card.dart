// ignore_for_file: prefer_const_constructors

import 'package:login/constants/icons.dart';
import 'package:login/models/lesson.dart';
import 'package:login/screens/addition.dart';
import 'package:flutter/material.dart';

class LessonCard extends StatelessWidget {
  final Lesson lesson;
  const LessonCard({Key? key, required this.lesson}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Addition(
                    context: context,
                  ))),
      child: Row(
        children: [
          lesson.isPlaying
              ? Image.asset(
                  icLearning,
                  height: 45,
                )
              : Image.asset(
                  icPlayNext,
                  height: 45,
                ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  lesson.name,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  lesson.duration,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          lesson.isCompleted
              ? Image.asset(
                  icDone,
                  height: 30,
                )
              : Image.asset(
                  icLock,
                  height: 30,
                ),
        ],
      ),
    );
  }
}
