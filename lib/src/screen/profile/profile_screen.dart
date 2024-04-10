import 'package:connect_mate/src/widgets/bottombar/custombottom_screen.dart';
import 'package:flutter/material.dart';

class profile_screen extends StatefulWidget {
  const profile_screen({super.key});

  @override
  State<profile_screen> createState() => _profile_screenState();
}

class _profile_screenState extends State<profile_screen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 170,top: 20),
              child: Text('Basic Details',style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(right: 260,),
              child: Text('Name',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    trailing: Padding(
                      padding: const EdgeInsets.all(17),
                      child: Icon(Icons.edit),
                    ),
                    title: Text("Mohan Mishra"),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 260,),
              child: Text('Phone No.',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    trailing: Padding(
                      padding: const EdgeInsets.all(17),
                      child: Icon(Icons.edit),
                    ),
                    title: Text("8648758455"),
                  ),
                ),
              ),
            ),

            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 260,),
              child: Text('Email id.',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    trailing: Padding(
                      padding: const EdgeInsets.all(17),
                      child: Icon(Icons.edit),
                    ),
                    title: Text("mm@gmail.com"),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 260,),
              child: Text('Passcode.',style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: ListTile(
                    titleAlignment: ListTileTitleAlignment.center,
                    trailing: Padding(
                      padding: const EdgeInsets.all(17),
                      child: Icon(Icons.edit),
                    ),
                    title: Text("******"),
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 95),
              child: CustomBottomBar(),
            )
          ],
        ),
      ),
    );
  }
}
