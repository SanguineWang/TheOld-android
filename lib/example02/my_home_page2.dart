import 'package:flutter/material.dart';

var myAppBar = AppBar(
  leading: Icon(Icons.menu),
  actions: <Widget>[IconButton(icon: Icon(Icons.more_horiz), onPressed: null)],
);

Widget navBar() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Column(
          children: <Widget>[Icon(Icons.account_balance), Text("home")],
        ),
        Column(
          children: <Widget>[Icon(Icons.add), Text("add")],
        ),
        Column(
          children: <Widget>[Icon(Icons.account_circle), Text("mine")],
        ),
      ],
    ),
  );
}

class MyHomePage2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return null;
  }
}
