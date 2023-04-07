import 'package:flutter/material.dart';
import 'package:latihan_login_page/login.dart';
import 'package:latihan_login_page/screen/home/components/category.dart';
import 'package:latihan_login_page/screen/home/components/dashboard.dart';

import '../../../constants.dart';

class HeaderWithSearchBox4 extends StatelessWidget {
  const HeaderWithSearchBox4({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.19,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
              top: 15,
              left: 10,
              right: 10,
              bottom: 15,
            ),
            height: size.height * 0.17,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFFF6F00), Color(0xFFFFC107)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(36),
                bottomRight: Radius.circular(36),
              ),
            ),
            child: Row(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return CategoryPage();
                      }));
                    },
                  ),
                ),
                Text(
                  'Recipe',
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 27),
                ),
                Spacer(),
                Image.asset("assets/image/dapur_resep.png")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
