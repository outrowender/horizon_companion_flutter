import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:forza_companion/shared/widgets/forza-card.widget.dart';

class TracksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(),
      ),
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ForzaCardWidget(
              title: 'aaa',
              url: 'https://picsum.photos/400?image=11',
            ),
            ForzaCardWidget(
              title: 'aaa',
              url: 'https://picsum.photos/250?image=8',
            ),
            ForzaCardWidget(
              title: 'aaa',
              url: 'https://picsum.photos/250?image=7',
            ),
            ForzaCardWidget(
              title: 'aaa',
              url: 'https://picsum.photos/250?image=6',
            ),
            ForzaCardWidget(
              title: 'aaa',
              url: 'https://picsum.photos/250?image=5',
            ),
          ],
        ),
      ),
      extendBody: true,
    );
  }
}
