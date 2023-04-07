import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:latihan_login_page/login.dart';
import 'package:latihan_login_page/resep/resep_garlic.dart';
import 'package:latihan_login_page/resep/resep_koreansw.dart';
import 'package:latihan_login_page/resep/resep_shakshuka.dart';
import 'package:latihan_login_page/screen/home/components/category.dart';
import 'package:latihan_login_page/screen/home/components/category2.dart';
import 'package:latihan_login_page/screen/home/components/header_with_searchbox2.dart';

class CategoryPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HeaderWithSearchBox2(size: size),
            const SizedBox(
              height: 15,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: <Widget>[
                  GestureDetector(
                    child: Text(
                      "Local",
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => CategoryPage()));
                    },
                  ),
                  const SizedBox(
                    width: 67,
                  ),
                  GestureDetector(
                    child: Text(
                      "Western",
                      style: TextStyle(
                        color: Colors.grey.withOpacity(0.5),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    onTap: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => CategoryPage2()));
                    },
                  ),
                  const SizedBox(
                    width: 67,
                  ),
                  InkWell(
                    splashColor: Colors.amber,
                    child: GestureDetector(
                      child: Text(
                        "Eastern",
                        style: TextStyle(
                          color: Colors.amber,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return CategoryPage3();
                        }));
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: 360,
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 2.5,
                    child: new InkWell(
                      splashColor: Colors.amber,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ResepGarlicBread();
                        }));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AspectRatio(
                              aspectRatio: 18.0 / 11.0,
                              child: Image.asset(
                                'assets/image/Cheesy-Garlic-Bread-sliced.jpg',
                                fit: BoxFit.fill,
                              )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                16.0, 12.0, 16.0, 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Cheesy Garlic Bread',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Eastern',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 360,
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 2.5,
                    child: new InkWell(
                      splashColor: Colors.amber,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ResepKoreanSW();
                        }));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AspectRatio(
                              aspectRatio: 18.0 / 11.0,
                              child: Image.asset(
                                'assets/image/korean.jpg',
                                fit: BoxFit.fill,
                              )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                16.0, 12.0, 16.0, 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Korean Sandwich',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Eastern',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 360,
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 2.5,
                    child: new InkWell(
                      splashColor: Colors.amber,
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return ResepShakshuka();
                        }));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AspectRatio(
                              aspectRatio: 18.0 / 11.0,
                              child: Image.asset(
                                'assets/image/Shakshuka.jpg',
                                fit: BoxFit.fill,
                              )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                16.0, 12.0, 16.0, 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Shakshuka',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Eastern',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
