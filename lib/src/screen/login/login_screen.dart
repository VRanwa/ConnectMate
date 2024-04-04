import 'package:connect_mate/src/screen/home/home_screen.dart';
import 'package:connect_mate/src/screen/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'), // Move "Login" text to app bar
      ),
      body: SingleChildScrollView( // Allow scrolling on small screens
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0), // Adjust padding based on screen size
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center vertically
              children: [
                SizedBox(height: 40), // Add spacing after app bar
                _buildTextField(hintText: 'Username', controller: _usernameController),
                SizedBox(height: 20),
                _buildTextField(hintText: 'Password', controller: _passwordController),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width * 0.8, 50), // Adjust button width based on screen size
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()),
                    );
                  },
                  child: Text('Create a new account'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({required String hintText, required TextEditingController controller}) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.8, // Adjust width based on screen size
      child: TextField(
        controller: controller,
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
