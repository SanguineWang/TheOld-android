//  Description
//  Author Mr.wang
//  Date 2020-05-04 18:56

import 'package:flutter/material.dart';
import 'package:flutterapp/pages/community/community_page.dart';
import 'package:flutterapp/pages/learn/courses_page.dart';
import 'package:flutterapp/pages/sharelocation/relatives_page.dart';

class MyHome extends StatefulWidget {
  MyHome({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int position = 0;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: IndexedStack(
          children: <Widget>[
            CommunityPage(),
            CoursesPage(),
            RelativesPage(),
          ],
          index: position
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: bottoms,
          onTap: _changePage,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          currentIndex: position,
        ));
  }



  void _changePage(int index) {
    if (index != position) {
      setState(() {
        position = index;
      });
    }
  }
}

final List<BottomNavigationBarItem> bottoms = <BottomNavigationBarItem>[
  BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Community")),
  BottomNavigationBarItem(icon: Icon(Icons.book), title: Text("Course")),
  BottomNavigationBarItem(icon: Icon(Icons.location_on), title: Text("Location")),
//  BottomNavigationBarItem(
//      icon: Icon(Icons.account_circle), title: Text("Mine")),
];
