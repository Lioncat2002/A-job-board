import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

GNav navBar() {
  return const GNav(tabs: [
    GButton(
      icon: Icons.work_outline,
    ),
    GButton(
      icon: Icons.mail_outline,
    ),
    GButton(
      icon: Icons.person_outline,
    ),
  ]);
}
