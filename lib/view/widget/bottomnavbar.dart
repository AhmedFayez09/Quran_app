import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  BottomNavBar(
      {Key? key,
      required this.page1,
      required this.page2,
      required this.page3,
      required this.page4,
      required this.title1,
      required this.title2,
      required this.title3,
      required this.title4})
      : super(key: key);
  String page1;

  String page2;

  String page3;

  String page4;

  String title1;

  String title2;

  String title3;

  String title4;

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items:  <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage('assets/images/${widget.page1}.png'),
            ),
            label: widget.title1),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/${widget.page2}.png')),
            label: widget.title2),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/${widget.page3}.png')),
            label: widget.title3),
        BottomNavigationBarItem(
            icon: ImageIcon(AssetImage('assets/images/${widget.page4}.png')),
            label: widget.title4),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.amber[800],
      onTap: _onItemTapped,
    );
  }
}
