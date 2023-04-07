import 'package:flutter/material.dart';
import 'package:latihan_login_page/constants.dart';
import 'package:latihan_login_page/screen/home/components/category.dart';
import 'package:latihan_login_page/screen/home/components/dashboard.dart';
import 'package:latihan_login_page/screen/home/components/profile.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int pageIndex = 0;

  final page = [
    DashboardPage(),
    CategoryPage(),
    ProfilePage(),
  ];

  void updateIndex(int value) {
    setState(() {
      pageIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: page[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        enableFeedback: false,
        onTap: updateIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.black,
        elevation: 5,
        items: [
          BottomNavigationBarItem(
            icon: pageIndex == 0
                ? const Icon(Icons.home)
                : const Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
              icon: pageIndex == 1
                  ? const Icon(Icons.category)
                  : const Icon(Icons.category),
              label: "Wishlist"),
          BottomNavigationBarItem(
              icon: pageIndex == 2
                  ? const Icon(Icons.person)
                  : const Icon(Icons.person),
              label: "Profile"),
        ],
      ),
    );
  }
}
