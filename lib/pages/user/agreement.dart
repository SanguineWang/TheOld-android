//  Description 
//  Author Mr.wang
//  Date 2020-05-05 23:54
//  Description
//  Author Mr.wang
//  Date 2020-05-05 16:48

import 'package:flutter/material.dart';
class Agreement extends StatefulWidget {
  @override
  _AgreementState createState() => _AgreementState();
}

class _AgreementState extends State<Agreement> {
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
            child: Text('Agreement!'),
          ),
        ));
  }
}

