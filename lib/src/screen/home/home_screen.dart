import 'package:connect_mate/src/screen/account/account_screen.dart';
import 'package:connect_mate/src/screen/hire/hire_screen.dart';
import 'package:connect_mate/src/screen/pickupdrop/pickupdrop_screen.dart';
import 'package:connect_mate/src/screen/profession/profession_screen.dart';
import 'package:connect_mate/src/widgets/bottombar/custombottom_screen.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


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
                        image: DecorationImage(
                          image: NetworkImage('https://imgs.search.brave.com/_rBsChXZyyT7onpGzZaw-rh4K_PhoVvhW7I0tzF5c7w/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9p/bmRpYW4tbWFuLXN0/dWRlbnQtc2hpcnQt/cG9zZWQtb3V0ZG9v/cl82Mjc4MjktMjI3/Ni5qcGc_c2l6ZT02/MjYmZXh0PWpwZw'),
                          fit: BoxFit.cover,

                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 45),
            CarouselSlider(
              options: CarouselOptions(
                height: 200.0,
                aspectRatio: 16/9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://imgs.search.brave.com/u5kmmQiJiTFt4EEZfXC3crPnYe5dh2OsOlevI7ZxXVM/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9zdGF0/aWMuamF2YXRwb2lu/dC5jb20vdG9wMTAt/dGVjaG5vbG9naWVz/L2ltYWdlcy90b3At/MTAtY2hlZnMtaW4t/aW5kaWExMC5qcGc'),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://imgs.search.brave.com/EMwyRNI9HUikVRAja2Zrz5TF9ih6_uXuWtqii0794Fo/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5nZXR0eWltYWdl/cy5jb20vaWQvOTc2/MTUxMTYyL3Bob3Rv/L2VsZWN0cmljaWFu/LXdpcmluZy1hLXNv/Y2tldC1jb3VuY2ls/LWhvdXNlcy1yZWZ1/cmJpc2htZW50LWxv/bmRvbi5qcGc_cz02/MTJ4NjEyJnc9MCZr/PTIwJmM9VHIyM0xV/WHFCdHJRNlZfR0tm/T1VuOE5wSlFKYi1n/NFlQVVhwZ2thOU1E/Zz0'),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
                Container(
                  width: 300,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage('https://imgs.search.brave.com/xslqD6ccCpwLnckdESdNQHimYiTj4DqIaxks6MIff5g/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvMTMy/NzIwNDQxOS9waG90/by9wbHVtYmVyLWZp/eGluZy5qcGc_cz02/MTJ4NjEyJnc9MCZr/PTIwJmM9YmFuUG9V/QVVsUDRNb1pUOFZF/REpkVmZKbk9pVGU0/ZnlRMHRINVc2bGNZ/Zz0'),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
              ],
            ),


            SizedBox(height: 25),
            InkWell(
              onTap: () {
                Get.to(()=>hire_screen(),transition: Transition.fadeIn);

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
                Get.to(()=>pickupdrop_screen(),transition: Transition.fadeIn);
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
                Get.to(()=>profession_screen(),transition: Transition.fadeIn);
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
            const CustomBottomBar()
          ],

        ),
      ),
    );
  }
}
