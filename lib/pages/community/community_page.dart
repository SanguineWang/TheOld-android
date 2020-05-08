import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutterapp/widgets/drawer.dart';

class CommunityPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
//    SystemChrome.setSystemUIOverlayStyle(dark);
//     TODO: implement build
    return Scaffold(
        floatingActionButton: buildFloatingActionButton(),
        //配置悬浮按钮的位置
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        //左侧抽屉
        drawer: SmartDrawer(
          child: Mydrawer(context),
         ),

        appBar: buildAppBar(),
        body: Center(
            child: Text('CommunityPage'),
        )
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.grey,
      ),
      centerTitle: true,
      title: Text('Community',style: TextStyle(color: Colors.grey)),
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      elevation: 0,
    );
  }
  FloatingActionButton buildFloatingActionButton() {
    return FloatingActionButton(
      child: Icon(
        Icons.add,
        color: Colors.white,//图标的颜色
        size: 30,//图标大小
      ),
      onPressed: () => print("FloatingActionButton"),
      backgroundColor: Colors.blue, //按钮的背景颜色
      heroTag: 'add',
    );
  }
}
