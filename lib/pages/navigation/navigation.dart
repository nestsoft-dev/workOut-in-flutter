import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:workout_flutter/pages/started/home_view.dart';

import '../../shared/styles/colors.dart';
import '../started/profile.dart';
import '../started/workouts.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  List screen = [Home(), Workout(), Userprofile()];
  int currentIndex = 0;

  onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      extendBody: true,
      bottomNavigationBar: FloatingNavbar(
        backgroundColor: kSecondColor,
        onTap: onTap,
        currentIndex: currentIndex,
        items: [
          FloatingNavbarItem(icon: FontAwesomeIcons.home, title: 'Home'),
          FloatingNavbarItem(icon: FontAwesomeIcons.running, title: 'Workouts'),
          FloatingNavbarItem(icon: FontAwesomeIcons.user, title: 'Profile'),
        ],
      ),
    );
  }
}
