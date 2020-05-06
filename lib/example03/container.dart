//  Description
//  Author Mr.wang
//  Date 2020-05-06 15:18
import 'package:flutter/material.dart';

main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: HomeWork01(),
      ),
    ));

class HomeWork01 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          buildImage(),
          buildRow(),
          buildContainer(),
          buildText()
        ],
      ),
    );
  }

  Container buildText() {
    return Container(
      padding: EdgeInsets.all(32),
      child: Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.',
          softWrap: true),
    );
  }

  Container buildContainer() {
    return Container(
      padding: EdgeInsets.all(8),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          buildColumn(Icons.call, 'call'),
          buildColumn(Icons.airplanemode_active, 'plane'),
          buildColumn(Icons.share, 'share'),
        ],
      ),
    );
  }

  Container buildRow() {
    return Container(
        padding: EdgeInsets.all(32),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '标题',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                  Text(
                    '副标题',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
            Icon(
              Icons.star_border,
              color: Colors.red,
            ),
            Text('40')
          ],
        ));
  }

  Image buildImage() {
    return Image.network(
        'http://i0.hdslb.com/bfs/article/d22bbcc815668a3244e4237c1731b98d8ee370a3.jpg',
        fit: BoxFit.cover);
  }

  Column buildColumn(icon, text) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          color: Colors.blue,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
