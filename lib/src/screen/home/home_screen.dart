import 'package:connect_mate/src/screen/account/account_screen.dart';
import 'package:connect_mate/src/screen/hire/hire_screen.dart';
import 'package:connect_mate/src/screen/pickupdrop/pickupdrop_screen.dart';
import 'package:connect_mate/src/screen/profession/profession_screen.dart';
import 'package:flutter/material.dart';

class home_screen extends StatefulWidget {
  const home_screen({super.key});

  @override
  State<home_screen> createState() => _home_screenState();
}

class _home_screenState extends State<home_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80, left: 5),
              child: Row(
                children: [
                  Text(
                    "home",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(width: 225),
                  InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>account_screen()));
                    },
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 45),
            Container(
              height: 200,
              width: 360,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
              ),
            ),

            SizedBox(height: 25),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>hire_screen()));
              },
              child: ListTile(
                leading: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
                    child: Padding(
                      padding: const EdgeInsets.all(17),
                      child: Icon(Icons.computer_outlined),
                    )),
                title: Text("Hire for hourly"),
              ),
            ),
            SizedBox(height:15),


            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>pickupdrop_screen()));
              },
              child: ListTile(
                leading: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
                  child: Padding(
                    padding: const EdgeInsets.all(17),
                    child: Icon(Icons.shopping_bag),
                  ),
                ),
                title: Text('Hire for order pickup'),
              ),
            ),
            SizedBox(height:15),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>profession_screen()));
              },
              child: ListTile(
                leading: Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
                  child: Padding(
                    padding: const EdgeInsets.all(17),
                    child: Icon(Icons.people_outline_rounded),
                  ),
                ),
                title: Text('Hire for professionals'),
              ),
            ),

            SizedBox(height: 130),

            Container(
              width: 380,
              padding: EdgeInsets.all(14.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.black,
                  width: 2.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.home,size: 40,),
                  Icon(Icons.wallet,size: 40,),
                  Icon(Icons.map,size: 40,),
                  Icon(Icons.person,size: 40,),
                ],
              ),
            ),

          ],

        ),
      ),
    );
  }
}
