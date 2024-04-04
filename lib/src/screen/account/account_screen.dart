import 'package:connect_mate/src/screen/profile/profile_screen.dart';
import 'package:connect_mate/src/screen/wallet/wallet_screen.dart';
import 'package:connect_mate/src/widgets/bottombar/custombottom_screen.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});

  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'), // Moved text to app bar
        actions: [
          IconButton(
            icon: Text(
              '₹',
              style: TextStyle(
                color: Colors.black,
                fontSize: MediaQuery.of(context).size.width < 350 ? 25 : 30, // Adjust font size based on screen size (optional)
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => WalletScreen()));
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0), // Adjust padding based on screen size
        child: Column(
          children: [
            SizedBox(height: 30), // Adjust spacing after app bar
            Center( // Center profile picture container
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
                },
                child: Container(
                  height: 140,
                  width: 140,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(70),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
              },
              child: Text(
                'Update',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            _buildListTile(title: 'Your Orders'),
            _buildListTile(title: 'Saved Address'),
            _buildListTile(title: 'Write to Us'),
            _buildListTile(title: 'Logout'),
            Spacer(), // Add spacer for vertical centering
            const CustomBottomBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile({required String title}) {
    return Padding(
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
            title: Text(title),
          ),
        ),
      ),
    );
  }
}
