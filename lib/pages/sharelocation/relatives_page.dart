//  Description
//  Author Mr.wang
//  Date 2020-05-01 22:38

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutterapp/entity/user_info.dart';
import 'package:flutterapp/pages/sharelocation/add_relative.dart';
import 'package:flutterapp/pages/sharelocation/map_page.dart';
import 'package:flutterapp/widgets/drawer.dart';

class RelativesPage extends StatefulWidget {
  @override
  _RelativesPageState createState() => _RelativesPageState();
}

var tabs = [Tab(text: '亲属'), Tab(text: '好友')];
List<User> myrelatives=[
  User('123456','https://t9.baidu.com/it/u=3423032555,2252223821&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1589271965&t=16a924509e302cfa7c0b52adaf690d64','relative1'),
  User('123457','https://t9.baidu.com/it/u=2487233534,1940523217&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1589271965&t=4bbe6b39f4dbd40560bd4b09a760f412','relative2')
];
//用于使用到了一点点的动画效果，因此加入了SingleTickerProviderStateMixin
class _RelativesPageState extends State<RelativesPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 2);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SmartDrawer(
        child: Mydrawer(context),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),

        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            buildUserAvatar(),
            TabBar(
              labelStyle: TextStyle(fontSize: 20),
              unselectedLabelStyle: TextStyle(fontSize: 15),
              labelColor: Colors.blue,
              //选中label颜色
              unselectedLabelColor: Colors.grey,
              //未选中label颜色
              indicatorColor: Colors.blue,
              isScrollable: true,
              tabs: tabs,
              controller: _tabController,
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              print('Add relative');
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AddRelative()),
              );
            },
          )
        ],
        backgroundColor: Colors.white,
        elevation: 0,
        brightness: Brightness.light,
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        ListView(
            children: myrelatives.map<Widget>((User u) =>
                Center(
                  child:
                  ListTile(
                    contentPadding: EdgeInsets.all(5),
                    leading:IconButton(
                      iconSize: 50,
                      icon: CircleAvatar(
                        //圆形图标控件
                        backgroundImage: NetworkImage(
                            u.avatar), //图片调取自网络
                      ),
                      onPressed: () {
                        print('clicked avatar of ${u.nickname}');
                      },
                    ),
                    subtitle: Text('ID:'+u.account,style: TextStyle(color: Colors.grey)),
                    title: Text(u.nickname,style: TextStyle(color: Colors.black)),
                    trailing: Icon(Icons.supervised_user_circle),
                    onTap: (){
                      print(' user :${u.nickname}');
                    },
                  ),
                )
              ).toList(),
          ),
        Center(child: Text("这是好友"))
      ]),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.location_on),
        onPressed: () {
         print('floatButton');
         _goToPage();
        },
      ),
    );
  }

  Builder buildUserAvatar() {
    return Builder(builder: (BuildContext context) {
            return IconButton(
              icon: CircleAvatar(
                //圆形图标控件
                backgroundImage: NetworkImage(
                   myInfo.avatar), //图片调取自网络
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          });
  }

  Widget _getIntoMap() => IconButton(
        icon: Icon(Icons.location_on),
        onPressed: _goToPage,
      );

  void _goToPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MapPage()),
    );
  }
}
