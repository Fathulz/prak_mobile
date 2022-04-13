import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavbarUI extends StatelessWidget {
  const BottomNavbarUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        iconSize: 18,
        selectedItemColor: Colors.green[300],
        unselectedItemColor: Colors.grey[400],
        showUnselectedLabels: true,
        elevation: 2.0,
        showSelectedLabels: true,
        items: [
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.bowlRice), label: "My Food"),
          BottomNavigationBarItem(
              icon: FaIcon(FontAwesomeIcons.user), label: "Profil"),
        ]);
  }
}
