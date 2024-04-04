import 'package:connect_mate/src/widgets/bottombar/CustomBottom_screen.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wallet',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width < 350 ? 20 : 30, // Adjust font size based on screen size
          ),
        ),
      ),
      body: SingleChildScrollView( // Allow scrolling on small screens
        padding: const EdgeInsets.symmetric(horizontal: 20.0), // Adjust padding based on screen size
        child: Column(
          children: [
            Center( // Center content vertically
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center, // Center content horizontally
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.3,
                    width: MediaQuery.of(context).size.width * 0.8, // Adjust container width based on screen size
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey.shade300,
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Mate Cash',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              '₹0.00',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: MediaQuery.of(context).size.width < 350 ? 25 : 35, // Adjust font size based on screen size
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.1), // Adjust spacing based on screen size
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start, // Align payment methods text to the left
                    children: [
                      Text(
                        'Payment methods',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: MediaQuery.of(context).size.width < 350 ? 18 : 25, // Adjust font size based on screen size
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        '  Cash',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: MediaQuery.of(context).size.width < 350 ? 16 : 20, // Adjust font size based on screen size
                        ),
                      ),
                      SizedBox(height: MediaQuery.of(context).size.height * 0.04), // Adjust spacing based on screen size
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.6, // Adjust button width based on screen size
                        decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'Add payment method',
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.25), // Adjust spacing based on screen size
                  CustomBottomBar(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
