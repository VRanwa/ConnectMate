import 'package:connect_mate/src/widgets/bottombar/custombottom_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width < 350 ? 20 : 30, // Adjust font size based on screen size
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView( // Allow scrolling on small screens
        padding: const EdgeInsets.symmetric(horizontal: 20.0), // Adjust padding based on screen size
        child: Column(
          children: [
            SizedBox(height: 20),
            Center( // Center profile picture container
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row( // Align "Basic Details" text to the left
              children: [
                Text(
                  'Basic Details',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width < 350 ? 18 : 25, // Adjust font size based on screen size
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            _buildProfileDetailItem(title: 'Name', value: 'User Name'),
            _buildProfileDetailItem(title: 'Phone No.', value: 'Phone No.'),
            _buildProfileDetailItem(title: 'Email ID', value: 'Email id.'),
            SizedBox(height: MediaQuery.of(context).size.height * 0.17), // Adjust spacing based on screen size
            CustomBottomBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileDetailItem({required String title, required String value}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Align titles and values to the left
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: MediaQuery.of(context).size.width < 350 ? 16 : 20, // Adjust font size based on screen size
            fontWeight: FontWeight.bold,
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
                  child: Icon(Icons.navigate_next),
                ),
                title: Text(value),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
