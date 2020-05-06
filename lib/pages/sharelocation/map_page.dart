import 'package:flutter/material.dart';
class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
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
//        appBar: BackAppBar(context),
        body: Container(
          child: Center(
            child: Text('There will be a map'),
          ),
        ));
  }
}
