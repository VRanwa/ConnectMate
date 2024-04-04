import 'package:connect_mate/src/screen/login/login_screen.dart';
import 'package:connect_mate/src/screen/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView( // Allow scrolling on small screens
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0), // Adjust horizontal padding
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              children: [
                Text(
                  "Welcome to our Hiring App!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: MediaQuery.of(context).size.width < 350 ? 30 : 40, // Adjust font size based on screen width
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center, // Center buttons horizontally
                    children: [
                      SizedBox( // Wrap buttons in SizedBox for responsive sizing
                        width: MediaQuery.of(context).size.width * 0.4, // Set button width based on screen size
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LoginScreen()),
                            );
                          },
                          child: Text('Login',style: TextStyle(fontSize: 18),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo.shade900,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      SizedBox( // Wrap buttons in SizedBox for responsive sizing
                        width: MediaQuery.of(context).size.width * 0.4, // Set button width based on screen size
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => SignUpScreen()),
                            );
                          },
                          child: Text('Register Now',style: TextStyle(fontSize: 18),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
