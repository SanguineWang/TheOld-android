import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowMaterialGrid: false,
      debugShowCheckedModeBanner: false,
      title: 'Old pepole',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      //顶部导航栏
        appBar: AppBar(
          title: Text('Demo'),
          leading: IconButton(
              icon: Icon(Icons.menu), tooltip: '菜单', onPressed: null), //标题右侧按钮,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search), tooltip: '搜索', onPressed: null),
            //标题右侧按钮
            IconButton(icon: Icon(Icons.add), tooltip: '添加', onPressed: null)
            //标题右侧按钮
          ],
        ),
        body: Center(
          child: Text('welcome',
              style: TextStyle(color: Colors.blue, fontSize: 40)),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.account_balance), title: Text("home")),
            BottomNavigationBarItem(
                icon: Icon(Icons.add), title: Text("add")),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), title: Text("mine")),
          ],
        ));
  }
}
