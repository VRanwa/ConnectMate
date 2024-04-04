import 'package:connect_mate/src/screen/account/account_screen.dart';
import 'package:connect_mate/src/screen/hire/hire_screen.dart';
import 'package:connect_mate/src/screen/pickupdrop/pickupdrop_screen.dart';
import 'package:connect_mate/src/screen/profession/profession_screen.dart';
import 'package:connect_mate/src/widgets/bottombar/custombottom_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'), // Moved "Home" text to app bar
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0), // Adjust padding based on screen size
        child: SizedBox(
          height: MediaQuery.of(context).size.height, // Adjust height as needed
          child: Column(
            children: [
              SizedBox(height: 20), // Add spacing after app bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space widgets horizontally
                children: [
                  Text(
                    "Welcome!",
                    style: TextStyle( // Adjust title style for responsiveness
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.width < 350 ? 20 : 25,
                    ),
                  ),
                  InkWell(
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => AccountScreen())),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: Colors.grey.shade600,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 200,
                width: MediaQuery.of(context).size.width, // Set full width
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                ),
              ),
              SizedBox(height: 25),
              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HireScreen())),
                child: ListTile(
                  leading: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
                    child: Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Icon(Icons.computer_outlined),
                    ),
                  ),
                  title: Text('Hire for hourly'),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PickupDropScreen())),
                child: ListTile(
                  leading: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
                    child: Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Icon(Icons.shopping_bag),
                    ),
                  ),
                  title: Text('Hire for order pickup'),
                ),
              ),
              SizedBox(height: 15),
              InkWell(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => ProfessionScreen())),
                child: ListTile(
                  leading: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
                    child: Padding(
                      padding: const EdgeInsets.all(17.0),
                      child: Icon(Icons.people_outline_rounded),
                    ),
                  ),
                  title: Text('Hire for professionals'),
                ),
              ),
              Spacer(), // Add spacer for vertical centering
              const CustomBottomBar(),
            ],
          ),
        ),
      ),
    );
  }
}
