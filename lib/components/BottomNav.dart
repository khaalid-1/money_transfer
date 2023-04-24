import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mobile_transfer/constants/themes.dart';

import 'package:mobile_transfer/controllers/bottomNavController.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: BTmNavController(),
      builder: (ctr) => Scaffold(
        backgroundColor: Colors.grey[500],
        body: ctr.pages[ctr.currenIndex],
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: kSecondryColor,
            unselectedItemColor: KprimaryColor,
            currentIndex: ctr.currenIndex,
            backgroundColor: Colors.white,
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.home_filled),
                  label: 'home',
                  activeIcon: Icon(Icons.home)),
              BottomNavigationBarItem(
                  icon: Icon(Icons.message_outlined),
                  label: 'messages',
                  activeIcon: Icon(Icons.message)),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline),
                label: 'person',
                activeIcon: Icon(Icons.person),
              ),
            ],
            onTap: (current) {
              ctr.getCurrentIndex(current);
            }),
      ),
    );
  }
}
