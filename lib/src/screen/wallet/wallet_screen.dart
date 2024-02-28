import 'package:flutter/material.dart';

class wallet_screen extends StatefulWidget {
  const wallet_screen({super.key});

  @override
  State<wallet_screen> createState() => _wallet_screenState();
}

class _wallet_screenState extends State<wallet_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('wallet'),
      ),
    );
  }
}
