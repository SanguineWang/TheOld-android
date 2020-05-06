import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/widgets/drawer.dart';
import 'package:flutterapp/widgets/status_bar.dart';

class CommunityPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
//    SystemChrome.setSystemUIOverlayStyle(dark);
//     TODO: implement build
    return Scaffold(
       drawer: SmartDrawer(
          child: Mydrawer(context),
        ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        centerTitle: true,
        title: Text('Community',style: TextStyle(color: Colors.grey)),
        backgroundColor: Colors.white,
        brightness: Brightness.light,
        elevation: 0,
      ),
        body: Center(
            child: Text('CommunityPage'),
        )
    );
  }
}
