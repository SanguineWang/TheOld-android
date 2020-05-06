//  Description 
//  Author Mr.wang
//  Date 2020-05-05 16:48

import 'package:flutter/material.dart';
class MyCollection extends StatefulWidget {
  @override
  _MyCollectionState createState() => _MyCollectionState();
}

class _MyCollectionState extends State<MyCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
              color: Colors.black
          ),
        ),
        body: Container(
          child: Center(
            child: Text('MyCollection!'),
          ),
        ));
  }
}
