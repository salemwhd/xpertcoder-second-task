import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, // Background color of the container
          borderRadius: BorderRadius.circular(16)),
      child: GNav(
          gap: 8,
          activeColor: Colors.red,
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          color: Colors.black,
          backgroundColor: Colors.transparent,
          tabBackgroundColor: Colors.red.withOpacity(0.2),
          tabs: const [
            GButton(
              icon: Icons.home_outlined,
              text: 'Home',
            ),
            GButton(
              icon: Icons.calendar_today,
              text: 'Booking History',
            ),
            GButton(
              icon: Icons.assignment_outlined,
              text: 'Services',
            ),
            GButton(
              icon: Icons.more_horiz_outlined,
            ),
          ]),
    );
  }
}
