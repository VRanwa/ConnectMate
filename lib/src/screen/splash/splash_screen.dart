import 'package:connect_mate/src/screen/login/login_screen.dart';
import 'package:connect_mate/src/screen/start/start_screen.dart';
import 'package:flutter/material.dart';

class splash_screen extends StatelessWidget {
  const splash_screen({required Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushReplacement(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) => start_screen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        ),
      );
    });

    return Scaffold(
      backgroundColor: Colors.blue, // Set the background color to blue
      body: Center(
        child: Text(
          'Splash Screen',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.0,
          ),
        ),
      ),
    );
  }
}
