import 'package:flutter/material.dart';
import 'package:flutter_batch_4/pages/day5/contact_page.dart';
import 'package:flutter_batch_4/pages/day5/home_page.dart';
import 'package:flutter_batch_4/pages/day5/setting_page.dart';

class NavbarPage extends StatefulWidget {
  const NavbarPage({super.key});

  @override
  State<NavbarPage> createState() => _NavbarPageState();
}

class _NavbarPageState extends State<NavbarPage> {

  var index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: [
        HomePage(),
        ContactPage(),
        SettingPage()
      ][index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (value) => setState(() {
          index = value;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.group),
            label: "Contact"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings"
          ),
        ]
      ),
    );
  }
}