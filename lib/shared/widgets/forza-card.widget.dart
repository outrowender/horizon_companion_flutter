import 'package:flutter/material.dart';

class ForzaCardWidget extends StatelessWidget {
  String url;
  String title;

  ForzaCardWidget({this.url, this.title});

  @override
  Widget build(BuildContext context) {
    return Card(
      semanticContainer: true,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.network(
            url,
            fit: BoxFit.fill,
          ),
          Container(
            height: 20,
            child: Text('eia'),
          )
        ],
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      elevation: 5,
      margin: EdgeInsets.all(10),
    );
  }
}
