//  Description 
//  Author Mr.wang
//  Date 2020-05-05 16:48

import 'package:flutter/material.dart';
class AddRelative extends StatefulWidget {
  @override
  _AddRelativeState createState() => _AddRelativeState();
}

class _AddRelativeState extends State<AddRelative> {
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
            child: Text('AddRelative!'),
          ),
        ));
  }
}
