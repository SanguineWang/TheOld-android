//  Description 左侧弹出侧边栏 与定制
//  Author Mr.wang
//  Date 2020-05-04 23:31
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/entity/user_info.dart';
import 'package:flutterapp/pages/sharelocation/relatives_page.dart';
import 'package:flutterapp/pages/user/change_password.dart';
import 'package:flutterapp/pages/user/my_collection.dart';
import 'package:flutterapp/pages/user/personal_information.dart';
import 'package:flutterapp/pages/user/settings.dart';

var myInfo = User(
    'number of userInfo',
    'https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1589212401&t=35519f0def1b6d8e99be80a142dea0f3',
    'Nickname of userInfo');

Widget Mydrawer(context) => ListView(padding: EdgeInsets.zero, children: <Widget>[
      UserAccountsDrawerHeader(
        //Material内置控件
        accountName: Text(myInfo.nickname),
        //用户名
        accountEmail: Text(myInfo.account),
        //用户邮箱
        currentAccountPicture: GestureDetector(
          //用户头像
          onTap: () {
            print('current user');
          },
          child: CircleAvatar(
            //圆形图标控件
            backgroundImage: NetworkImage(myInfo.avatar), //图片调取自网络
          ),
        ),
        otherAccountsPictures: <Widget>[
          //粉丝头像
          GestureDetector(
            //手势探测器，可以识别各种手势，这里只用到了onTap
            onTap: () => print('other user1'), //暂且先打印一下信息吧，以后再添加跳转页面的逻辑
            child: CircleAvatar(
              backgroundImage: NetworkImage(myrelatives[0].avatar), //只打印前俩，多了位置不好控制，可用map操作
            ),
          ),
          GestureDetector(
            onTap: () => print('other user2'),
            child: CircleAvatar(
              backgroundImage: NetworkImage(myrelatives[1].avatar),
            ),
          )
        ],
        decoration: BoxDecoration(
          //用一个BoxDecoration装饰器提供背景图片
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://t9.baidu.com/it/u=1307125826,3433407105&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1589212401&t=52a717c6c322b9fde3c9602b04748d5e')),
        ),
      ),
      ListTile(
        leading: Icon(Icons.golf_course),
        title: Text('我的收藏'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {print('click 我的收藏');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MyCollection()),
        );
        },
      ),
      ListTile(
        leading: Icon(Icons.info),
        title: Text('个人信息'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: ()  {
          print('click 个人信息');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => PersonalInfo()),
          );
        },
      ),
      ListTile(
        leading: Icon(Icons.vpn_key),
        title: Text('修改密码'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: ()  {print('click 修改密码');
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ChangePassword()),
        );
        },
      ),
      ListTile(
          leading: Icon(Icons.settings),
          title: Text('设置'),
          onTap: () {print('click 设置');
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Settings()),
          );
          }),
    ]);

//定制的Drawer
class SmartDrawer extends StatelessWidget {
  final double elevation;
  final Widget child;
  final String semanticLabel;

  ///new start
  final double widthPercent;

  ///new end
  const SmartDrawer({
    Key key,
    this.elevation = 16.0,
    this.child,
    this.semanticLabel,

    ///new start
    this.widthPercent = 0.7,

    ///new end
  })  :

        ///new start
        assert(widthPercent != null && widthPercent < 1.0 && widthPercent > 0.0)

        ///new end
        ,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    assert(debugCheckHasMaterialLocalizations(context));
    String label = semanticLabel;
    switch (defaultTargetPlatform) {
      case TargetPlatform.iOS:
        label = semanticLabel;
        break;
      case TargetPlatform.android:
      case TargetPlatform.fuchsia:
        label = semanticLabel ?? MaterialLocalizations.of(context)?.drawerLabel;
    }

    ///new start
    final double _width = MediaQuery.of(context).size.width * widthPercent;

    ///new end
    return Semantics(
      scopesRoute: true,
      namesRoute: true,
      explicitChildNodes: true,
      label: label,
      child: ConstrainedBox(
        ///edit start
        constraints: BoxConstraints.expand(width: _width),

        ///edit end
        child: Material(
          elevation: elevation,
          child: child,
        ),
      ),
    );
  }
}
