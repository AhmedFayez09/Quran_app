import 'package:flutter/material.dart';
import 'package:quran/core/constant.dart';
import 'package:quran/view/screen/hadehscreen.dart';
import 'package:quran/view/screen/quranscreen.dart';
import 'package:quran/view/screen/raduoscreen.dart';
import 'package:quran/view/screen/sebahscreen.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({Key? key}) : super(key: key);

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  int _selectedIndex = 0;

  List<Widget> PagesTapped = [
    QuranSceen(),
    HadehScreen(),
    SebahScreen(),
    RadioScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Container(
          color: Colors.amberAccent,
           child: Image.asset('assets/images/bg3.png',fit: BoxFit.fill,),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,

          appBar: AppBar(

            title: Text(
              "إسلامي",
              style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          body: Center(child: PagesTapped.elementAt(_selectedIndex),),
          bottomNavigationBar: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/quran.png'),
                  ),
                  label: 'القراءن'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/hadeh.png')),
                  label: 'الاحاديث'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/sebha.png')),
                  label: 'السبحة'),
              BottomNavigationBarItem(
                  icon: ImageIcon(AssetImage('assets/images/radio.png')),
                  label: 'الراديو'),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.white,
            onTap: _onItemTapped,
            type: BottomNavigationBarType.fixed, // Fixed
            backgroundColor: AppTheme.primarycolor,
          ),
        ),
      ],
    );
  }
}
