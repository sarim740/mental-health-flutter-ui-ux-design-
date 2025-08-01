import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int currentIndex;

  const CustomNavBar({super.key, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.grey[200],
      currentIndex: currentIndex,
      selectedItemColor: Colors.blue, // Color when selected
      unselectedItemColor: Colors.grey, // Color when not selected
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (index) {
        if (index == 0) {
          Navigator.pushReplacementNamed(context, '/');
        } else if (index == 1) {
          Navigator.pushReplacementNamed(context, '/dashboard');
        }

        // Add more routes if needed
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.dashboard), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.mail), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.verified_user), label: ''),
      ],
    );
  }
}
