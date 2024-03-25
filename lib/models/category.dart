// ignore_for_file: unused_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Category {
  String thumbnail;
  String name;
  int noOfCourses;

  Category({
    required this.name,
    required this.noOfCourses,
    required this.thumbnail,
  });
}

List<Category> categoryList = [
  Category(
    name: 'Addition',
    noOfCourses: 8,
    thumbnail: 'assets/icons/maths2.png',
  ),
  Category(
    name: 'Subtraction',
    noOfCourses: 8,
    thumbnail: 'assets/icons/su2.png',
  ),
  Category(
    name: 'Multiplication',
    noOfCourses: 7,
    thumbnail: 'assets/icons/multi.jpg',
  ),
  Category(
    name: 'Division',
    noOfCourses: 8,
    thumbnail: 'assets/icons/lmk4.png',
  ),
];
