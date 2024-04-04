import 'package:flutter/material.dart';

class HireScreen extends StatefulWidget {
  const HireScreen({super.key});

  @override
  State<HireScreen> createState() => _HireScreenState();
}

class _HireScreenState extends State<HireScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hire for Hourly"),
      ),
    );
  }
}
