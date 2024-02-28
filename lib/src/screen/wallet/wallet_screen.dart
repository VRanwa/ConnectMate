import 'package:connect_mate/src/widgets/bottombar/CustomBottom_screen.dart';
import 'package:flutter/material.dart';

class wallet_screen extends StatefulWidget {
  const wallet_screen({Key? key}) : super(key: key);

  @override
  State<wallet_screen> createState() => _wallet_screenState();
}

class _wallet_screenState extends State<wallet_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Wallet',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      width: MediaQuery.of(context).size.width * 0.8,
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
                                  fontSize: 35,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.15),
                    Column(
                      children: [
                        Text(
                          'Payment methods',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          '💵  Cash',
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                        Container(
                          height: 40,
                          width: 200,
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
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    CustomBottomBar(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
