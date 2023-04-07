import 'package:flutter/material.dart';
import 'package:latihan_login_page/bottom.dart';
import 'package:latihan_login_page/constants.dart';
import 'package:latihan_login_page/screen/home/components/body.dart';
import 'package:latihan_login_page/screen/home/components/category.dart';
import 'package:latihan_login_page/screen/home/components/profile.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  final tabs = [
    Body(),
    CategoryPage(),
    ProfilePage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        selectedItemColor: Colors.amber,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text('Categories'),
              backgroundColor: Colors.amber),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),
              backgroundColor: Colors.amber),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

// class DashboardPage extends StatelessWidget {
//   get kPrimaryColor => null;
//   int _currentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(

//       body: Body(),
//        bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         items: [
//           BottomNavigationBarItem(
//               icon: Icon(Icons.home),
//               title: Text('Home'),
//               backgroundColor: kPrimaryColor),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.category),
//               title: Text('Categories'),
//               backgroundColor: kPrimaryColor),
//           BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               title: Text('Profile'),
//               backgroundColor: kPrimaryColor),
//         ],
//         onTap: (index) {
//           setState(() {
//             _currentIndex = index;
//           });
//         },
//       ),
//     );
//   }

AppBar buildAppBar() {
  return AppBar(
    elevation: 0,
    title: Text("Main Page"),
  );
}
