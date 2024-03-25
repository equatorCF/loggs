// ignore_for_file: duplicate_import

import 'package:login/screens/account_screen.dart';
import 'package:login/screens/account_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Settings());
}

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      home: const AccountScreen(),
    );
  }
}
