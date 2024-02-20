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
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 140),
                      child: Text('Profile',
                          textAlign:TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                      ),
                    ),
                    SizedBox(width: 100),
                    Text('₹',
                      textAlign:TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 30),
                Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                     color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
                SizedBox(height: 10),
                Text('Update',
                  textAlign:TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        trailing: Padding(
                          padding: const EdgeInsets.all(17),
                          child: Icon(Icons.navigate_next),
                        ),
                        title: Text("Hire for hourly"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        trailing: Padding(
                          padding: const EdgeInsets.all(17),
                          child: Icon(Icons.navigate_next),
                        ),
                        title: Text("Hire for hourly"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        trailing: Padding(
                          padding: const EdgeInsets.all(17),
                          child: Icon(Icons.navigate_next),
                        ),
                        title: Text("Hire for hourly"),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: ListTile(
                        titleAlignment: ListTileTitleAlignment.center,
                        trailing: Padding(
                          padding: const EdgeInsets.all(17),
                          child: Icon(Icons.navigate_next),
                        ),
                        title: Text("Hire for hourly"),
                      ),
                    ),
                  ),
                ),
             SizedBox(height: 80),

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
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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

        ],
      ),
    );
  }
}
