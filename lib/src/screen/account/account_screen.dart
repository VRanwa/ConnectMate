import 'package:connect_mate/src/screen/profile/profile_screen.dart';
import 'package:connect_mate/src/screen/profile/userimage/user_image.dart';
import 'package:connect_mate/src/screen/wallet/wallet_screen.dart';
import 'package:connect_mate/src/widgets/bottombar/custombottom_screen.dart';
import 'package:flutter/material.dart';

class account_screen extends StatefulWidget {
  const account_screen({super.key});


  @override
  State<account_screen> createState() => account_screenState();

}


class account_screenState extends State<account_screen> {
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
                Center(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('My account',
                            textAlign:TextAlign.center,
                            style: TextStyle(
                                color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                        ),
                      ),
                      SizedBox(width: 170),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>wallet_screen()));
                        },
                        child: Text('₹',
                          textAlign:TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(height: 30),
                Container(
                    height: 140,
                    width: 140,
                    decoration: BoxDecoration(
                       color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(70),
                      image: DecorationImage(
                        image: NetworkImage('https://imgs.search.brave.com/_rBsChXZyyT7onpGzZaw-rh4K_PhoVvhW7I0tzF5c7w/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9p/bmRpYW4tbWFuLXN0/dWRlbnQtc2hpcnQt/cG9zZWQtb3V0ZG9v/cl82Mjc4MjktMjI3/Ni5qcGc_c2l6ZT02/MjYmZXh0PWpwZw'),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 115,left: 100),
                      child: Icon(Icons.settings),
                    ),
                  ),

                SizedBox(height: 10),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>profile_screen()));
                  },
                  child: Text('Update',
                    textAlign:TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
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
                        title: Text("your orders"),
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
                        title: Text("saved address"),
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
                        title: Text("write to us"),
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
                        title: Text("Logout"),
                      ),
                    ),
                  ),
                ),
             SizedBox(height: 120),

                const CustomBottomBar()



              ],
            ),
          ),

        ],
      ),
    );
  }
}
