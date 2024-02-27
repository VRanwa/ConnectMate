import 'package:flutter/material.dart';

class CustomBottomBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomBar({
    required this.items,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: items,
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Colors.blue, // Customize as needed
      unselectedItemColor: Colors.grey, // Customize as needed
      backgroundColor: Colors.white, // Customize as needed
      type: BottomNavigationBarType.fixed, // Customize as needed
      showSelectedLabels: true, // Customize as needed
      showUnselectedLabels: true, // Customize as needed
    );
  }
}
