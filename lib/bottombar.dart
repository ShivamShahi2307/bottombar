import 'package:bottombar/Cart.dart';
import 'package:bottombar/account.dart';
import 'package:bottombar/homescreen.dart';
import 'package:bottombar/searchscreen.dart';
import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 0;
  List screens = [
    const HomeScreen(),
    const SearchScreen(),
    const Cart(),
    const Account()
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: screens[_currentIndex],
        backgroundColor: Colors.orange,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          // ignore: prefer_const_literals_to_create_immutables
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Search',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.card_travel),
              label: 'Cart',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.account_box_sharp),
              label: 'Account',
              backgroundColor: Colors.amber,
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          fixedColor: Color.fromARGB(255, 11, 7, 255),
        ),
      ),
    );
  }
}
