import 'package:connect_mate/src/screen/login/login_screen.dart';
import 'package:connect_mate/src/screen/signup/signup_screen.dart';
import 'package:flutter/material.dart';

class start_screen extends StatefulWidget {
  const start_screen({super.key});

  @override
  State<start_screen> createState() => _start_screenState();
}

class _start_screenState extends State<start_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Padding(
          padding: const EdgeInsets.only(top:300),
          child: Column(
            children: [
              Text("Welcome to our Hiring App!",textAlign: TextAlign.center,style: TextStyle(
                color: Colors.black,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              )),
             Padding(
               padding: const EdgeInsets.only(top: 50.0,left: 15),
               child: Row(
                 children: [

                   InkWell(
                     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>login_screen(),
                     ),
                     );
                     },
                     child: Container(
                       height: 40,
                       width: 170,
                       decoration: BoxDecoration(
                         color: Colors.indigo.shade900,
                       ),
                       child: Center(
                         child: Text('Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                         ),
                       ),
                     ),
                   ),

                   SizedBox(width: 20),
                   Container(
                     height: 40,
                     width: 170,
                     decoration: BoxDecoration(
                         color: Colors.black,
                     ),
                     child: InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=>signUp_screen()));
                       },
                       child: Center(
                         child: Text('Register Now',
                           style: TextStyle(
                               color: Colors.white,
                               fontWeight: FontWeight.w500,
                               fontSize: 20
                           ),
                         ),
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
    );
  }
}
