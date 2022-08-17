import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_proj_mohsina/screens/taskScreen.dart';
import 'package:web_proj_mohsina/screens/teamScreen.dart';
import 'package:web_proj_mohsina/screens/vipScreen.dart';

import 'HomeScreen.dart';
import 'myAccountScreen.dart';

class BottomNav extends StatefulWidget {
  BottomNav({
    Key? key,
  }) : super(key: key);

  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;
  static final List<Widget> _widgetOptions = [
    HomePage(),
    TaskScreen(),
    VIPScreen(),
    TeamScreen(),
    MyAccountScreen(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var sizeH = MediaQuery.of(context).size.height;
    var sizeW = MediaQuery.of(context).size.width;
    return Scaffold(
      body: _widgetOptions.elementAt(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        // backgroundColor: Colors.transparent,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.red,
        onTap: (value) {
          setState(() => _currentIndex = value);
        },
        items: [
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.home),
            label: ("Home"),
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.person),
            label: ("Task"),
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.person),
            label: ("VIP"),
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.person),
            label: ("Team"),
          ),
          BottomNavigationBarItem(
            icon: const Icon(CupertinoIcons.person),
            label: ("My"),
          ),
        ],
      ),
    );
  }
}
