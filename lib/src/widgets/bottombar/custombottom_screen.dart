import 'package:connect_mate/src/screen/account/account_screen.dart';
import 'package:connect_mate/src/screen/home/home_screen.dart';
import 'package:connect_mate/src/screen/pickupdrop/pickupdrop_screen.dart';
import 'package:connect_mate/src/screen/wallet/wallet_screen.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: Duration.zero,
      child: Container(
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
            InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>home_screen()));
                } ,
                child: Icon(Icons.home, size: 40)),
            InkWell(
              onTap:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>wallet_screen()));
              },
                child: Icon(Icons.wallet, size: 40)),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>pickupdrop_screen()));
              },
                child: Icon(Icons.map, size: 40)
            ),
            InkWell(
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>account_screen()));
                } ,
                child: Icon(Icons.person, size: 40)),
          ],
        ),
      ),
    );
  }
}
