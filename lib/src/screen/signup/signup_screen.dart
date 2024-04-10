import 'package:connect_mate/src/screen/home/home_screen.dart';
import 'package:flutter/material.dart';

class signUp_screen extends StatefulWidget {
  const signUp_screen({super.key});

  @override
  State<signUp_screen> createState() => _signUp_screenState();
}

class _signUp_screenState extends State<signUp_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top:200,right: 180,bottom: 30 ),
              child: Text('Register now',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),

            Container(
                width:360,
                color: Colors.grey.shade200,
                child: TextField(style:TextStyle(color: Colors.black,),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 2.0,
                      ),
                    ),
                    hintText: 'username*',
                  ),
                ),
              ),



            SizedBox(height: 20),

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
                  hintText: 'email address*',
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
                  hintText: 'password*',
                ),
              ),
            ),


            SizedBox(height: 40),

            InkWell(
              onTap: () {

              },
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>home_screen()));
                },
                child: Container(
                  height: 50,
                  width: 360,
                  color: Colors.indigo.shade900,
                  child: Text('Register',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),



          ],
        ),
      ),
    );
  }
}
