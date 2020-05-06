//  Description  顶部导航栏 第一个没用
//  Author Mr.wang
//  Date 2020-05-02 18:08
import 'package:flutter/material.dart';
import 'package:flutterapp/pages/learn/intro_page.dart';

Widget MyAppBar(context,widget) => AppBar(
      title: const Text(
        '测试!',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      centerTitle: true,
      actions: <Widget>[
        IconButton(
          icon: const Icon(Icons.info_outline),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => IntroPage()),
          ),
        ),
      ],
      bottom: TabBar(
          labelStyle: TextStyle(
            fontFamily: 'ProductSans',
            fontWeight: FontWeight.bold,
          ),
          isScrollable: true,
          tabs: [
            new Tab(
              text: "关注",
            ),
            new Tab(
              text: "推荐",
            ),
            new Tab(
              text: "热搜",
            ),
            new Tab(
              text: "关注1",
            ),
            new Tab(
              text: "推荐1",
            ),
            new Tab(
              text: "热搜1",
            ),
            new Tab(
              text: "关注2",
            ),
            new Tab(
              text: "推荐2",
            ),
            new Tab(
              text: "热搜2",
            )
          ]),
    );
// 页面back
Widget BackAppBar(context) => AppBar(

  leading: IconButton(
      icon: Icon(Icons.arrow_back_ios, color: Colors.black),
      onPressed: () {
        Navigator.pop(context);
      }),
  elevation: 0,
  brightness: Brightness.light,
//  toolbarOpacity: 0.5,
);