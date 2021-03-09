import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TracksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Stack(
        children: [
          Container(
            height: 1000,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  width: 160.0,
                  height: 50,
                  color: Colors.red,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          Positioned(
            left: 8,
            right: 8,
            bottom: 8,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: BottomNavigationBar(
                  backgroundColor: Color.fromARGB(200, 220, 220, 220),
                  showUnselectedLabels: true,
                  selectedItemColor: Colors.black,
                  type: BottomNavigationBarType.fixed,
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.ac_unit_outlined),
                      label: 'Winter',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.emoji_nature_outlined),
                      label: 'Spring',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.wb_sunny_outlined),
                      label: 'Summer',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.eco_outlined),
                      label: 'Autumn',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
