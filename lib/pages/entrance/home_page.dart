//  Description
//  Author Mr.wang
//  Date 2020-05-04 18:56

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/pages/community/community_page.dart';
import 'package:flutterapp/pages/learn/courses_page.dart';
import 'package:flutterapp/pages/sharelocation/relatives_page.dart';
import 'package:flutterapp/widgets/status_bar.dart';

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
        floatingActionButton: buildFloatingActionButton(),
        //配置悬浮按钮的位置
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,

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

  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black,//图标的颜色
          size: 20,//图标大小
        ),
        onPressed: () => print("FloatingActionButton"),
        backgroundColor: Colors.blue, //按钮的背景颜色
      );
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
