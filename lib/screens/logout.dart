import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';
import 'package:lottie/lottie.dart';

class LoggedOutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logged Out'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Lottie Animation
            Lottie.asset(
              'assets/animations/logout3.json', // Replace 'assets/animation.json' with the path to your Lottie animation JSON file
              width: 500,
              height: 500,
            ),
            SizedBox(height: 16),
            // Button to return to login
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text(' Login'),
            ),
          ],
        ),
      ),
    );
  }
}
