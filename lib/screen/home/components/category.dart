import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:latihan_login_page/constants.dart';
import 'package:latihan_login_page/login.dart';
import 'package:latihan_login_page/resep/resep_batagor.dart';
import 'package:latihan_login_page/resep/resep_nasgor.dart';
import 'package:latihan_login_page/resep/resep_seblak.dart';
import 'package:latihan_login_page/screen/home/components/category2.dart';
import 'package:latihan_login_page/screen/home/components/category3.dart';
import 'package:latihan_login_page/screen/home/components/header_with_searchbox2.dart';

class CategoryPage extends StatelessWidget {
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
                        color: Colors.amber,
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
                          color: Colors.grey.withOpacity(0.5),
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
                        return ResepNasGor();
                      }));
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        AspectRatio(
                            aspectRatio: 18.0 / 11.0,
                            child: Image.asset(
                              'assets/image/basil-minced-pork-with-rice-fried-egg.jpg',
                              fit: BoxFit.fill,
                            )),
                        Padding(
                          padding:
                              const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Nasi Goreng Telur',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              const SizedBox(height: 8.0),
                              Text(
                                'Local',
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
                          return ResepBatagor();
                        }));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AspectRatio(
                              aspectRatio: 18.0 / 11.0,
                              child: Image.asset(
                                'assets/image/batagor.jpg',
                                fit: BoxFit.fill,
                              )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                16.0, 12.0, 16.0, 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Batagor',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Local',
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
                          return ResepSeblak();
                        }));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          AspectRatio(
                              aspectRatio: 18.0 / 11.0,
                              child: Image.asset(
                                'assets/image/seblak.jpg',
                                fit: BoxFit.fill,
                              )),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(
                                16.0, 12.0, 16.0, 8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Seblak',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16),
                                ),
                                const SizedBox(height: 8.0),
                                Text(
                                  'Local',
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

// Container(
//               padding: const EdgeInsets.only(top: 35, bottom: 35),
//               child: const ListTile(
//                 title: Text(
//                   'Categories',
//                   style: TextStyle(
//                     fontSize: 40,
//                     color: Colors.white,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//               decoration: BoxDecoration(
//                 gradient: LinearGradient(
//                   colors: [Color(0xFFFF6F00), Color(0xFFFFC107)],
//                   begin: Alignment.topCenter,
//                   end: Alignment.bottomCenter,
//                 ),
//                 borderRadius: BorderRadius.only(
//                   bottomLeft: Radius.circular(36),
//                   bottomRight: Radius.circular(36),
//                 ),
//               ),
//             ),
