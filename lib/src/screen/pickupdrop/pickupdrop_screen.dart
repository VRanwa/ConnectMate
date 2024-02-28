import 'package:connect_mate/src/widgets/bottombar/custombottom_screen.dart';
import 'package:flutter/material.dart';

class pickupdrop_screen extends StatefulWidget {
  const pickupdrop_screen({super.key});

  @override
  State<pickupdrop_screen> createState() => _pickupdrop_screenState();
}

class _pickupdrop_screenState extends State<pickupdrop_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pickup and Drop"),

      ),
      body: Center
        (child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(right: 100,top: 50),
          child: Text('Enter drop location',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Container(
          height: 80,
          width: 360,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),


          ),          child: TextField(
            decoration: InputDecoration(
              hintText: ' enter here',
            ),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(right: 100),
          child: Text('Enter pickup location',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 10),
        Container(
          height: 80,
          width: 360,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: ' enter here',
            ),
          ),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.only(right: 200),
          child: Text('Add a note',style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold),),
        ),
        SizedBox(height: 10),
        Container(
          height: 80,
          width: 360,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            decoration: InputDecoration(
              hintText: ' enter here',
            ),
          ),
        ),
        SizedBox(height: 40),


        InkWell(
          child: Container(
            height: 50,
             width: 200,
             decoration: BoxDecoration(
               color: Colors.blue.shade900,
               borderRadius: BorderRadius.circular(20),
             ),
            child: Center(child: Text('submit',style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25
            ),)),
          ),
        ),
        SizedBox(height: 90),

        CustomBottomBar()



      ],
      )
      ),

    );
  }
}