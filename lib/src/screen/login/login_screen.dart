import 'package:connect_mate/src/screen/home/home_screen.dart';
import 'package:connect_mate/src/screen/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}



class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:250,right: 270,bottom: 30 ),
              child: Text('Login',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),

            Container(
              width: 360,
              color: Colors.grey.shade200,
              child: TextField(style:TextStyle(color: Colors.black,),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2.0,
                    ),
                  ),
                  hintText: 'username',
                ),
              ),
            ),


            SizedBox(height: 20),


            Container(
              width: 360,
              color: Colors.grey.shade200,
              child: TextField(
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1.0, // Reduce the width of the border here
                    ),
                  ),
                  hintText: 'password',
                ),
              ),
            ),


            SizedBox(height: 40),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>home_screen()));
              },
              child: Container(
                height: 50,
                width: 360,
                color: Colors.indigo.shade900,
                child: Text('Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 210),
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>signUp_screen(),),);
              }, child: Text('create a new account'),),
            ),



          ],
        ),
      ),
    );
  }
}
