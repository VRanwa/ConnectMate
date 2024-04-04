import 'package:connect_mate/src/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register Now',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width < 350 ? 20 : 25, // Adjust title font size
          ),
        ),
      ),
      body: SingleChildScrollView( // Allow scrolling on small screens
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0), // Adjust padding based on screen size
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              children: [
                SizedBox(height: 20), // Add spacing after app bar
                _buildTextField(hintText: 'Username*', isPassword: false),
                SizedBox(height: 20),
                _buildTextField(hintText: 'Email Address*', isPassword: false),
                SizedBox(height: 20),
                _buildTextField(hintText: 'Password*', isPassword: true),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text('Register'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50), // Adjust button width based on screen size
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String hintText, required bool isPassword}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8, // Adjust width based on screen size
      child: TextField(
        obscureText: isPassword, // Hide text for password field
        style: TextStyle(color: Colors.black),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.black,
              width: 1.0,
            ),
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
