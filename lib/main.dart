import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutterapp/pages/entrance/home_page.dart';
import 'pages/entrance/advertisement_page.dart';
import 'widgets/status_bar.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(dark);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,//debug标志
      title: 'The Old',
      theme: ThemeData(
        platform: TargetPlatform.android,
      ),
      home: AdvertisementPage(),
      routes: <String, WidgetBuilder>{ // 路由
        '/index': (BuildContext context) => MyHome(),
      },
    );
  }
}


