import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SeasonsFooterWidget extends StatefulWidget {
  @override
  _SeasonsFooterWidgetState createState() => _SeasonsFooterWidgetState();
}

class _SeasonsFooterWidgetState extends State<SeasonsFooterWidget> {
  var _currentSelected = 0;

  updateCurrent(int value) {
    setState(() {
      this._currentSelected = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
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
                icon: Icon(Icons.emoji_nature_rounded),
                label: 'Spring',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wb_sunny_rounded),
                label: 'Summer',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.eco_rounded),
                label: 'Autumn',
              ),
            ],
            onTap: updateCurrent,
            currentIndex: _currentSelected,
          ),
        ),
      ),
    );
  }
}
