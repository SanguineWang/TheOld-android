//  Description 登录页面
//  Author Mr.wang
//  Date 2020-05-05 17:38
//import 'dart:ffi';

//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:fluttertoast/fluttertoast.dart';

main() => runApp(MaterialApp(
      home: Login(),
    ));

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _phoneNumberController;

  TextEditingController _passwordController;

  //账号
  String number;

  //密码
  String password;


  @override
  Widget build(BuildContext context) {
    @override
    void initState() {
      _phoneNumberController = TextEditingController();
      _passwordController = TextEditingController();


      var size = MediaQuery.of(context).size;

    }
    return Scaffold(
        appBar: buildAppBar(),
        body: Container(
          padding: EdgeInsets.only(left: 40, right: 40),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildIcon(),
                Container(
                  child: Text('欢迎使用老年宝', style: TextStyle(fontSize: 28)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: Text('手机号码', style: TextStyle(fontSize: 14)),
                ),
                buildNumber(),
                Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text('密码', style: TextStyle(fontSize: 14)),
                ),
                buildPassWord(),
                buildLoginButton(),
                GestureDetector(
                  child: Text('忘记密码',
                      style: TextStyle(fontSize: 14, color: Colors.grey)),
                  onTap: () {
                    print('忘记密码');
//                   Navigator.push(context, MaterialPageRoute(builder: (context) =>Agreement()));
                  },
                ),
                buildRegisterButton()
              ]),
        ));
  }

  Container buildLoginButton() {
    return Container(
        padding: EdgeInsets.only(top: 20, bottom: 20), child: LoginButton());
  }

  Container buildRegisterButton() {
    return Container(
      width: double.infinity,
      alignment: Alignment(0.0, -1.0),
      padding: EdgeInsets.only(top: 50),
      child: GestureDetector(
        child: Text('注册账号',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18, color: Colors.grey)),
        onTap: () {
          print('注册账号');
//                   Navigator.push(context, MaterialPageRoute(builder: (context) =>Agreement()));
        },
      ),
    );
  }

  Container buildIcon() {
    return Container(
      padding: EdgeInsets.only(bottom: 20),
      child: CircleAvatar(
          backgroundImage: NetworkImage(
              'https://t8.baidu.com/it/u=3571592872,3353494284&fm=79&app=86&size=h300&n=0&g=4n&f=jpeg?sec=1589212401&t=35519f0def1b6d8e99be80a142dea0f3')
//                    AssetImage('assets/images/app'),//debug用网络图片
          ),
    );
  }

  Container buildNumber() {
    return Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(width: 0.4, color: Colors.grey))),
        child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                  decoration: BoxDecoration(
                      border: Border(
                          right: BorderSide(width: 0.4, color: Colors.grey))),
                  child: Container(
                    child: Text('+86',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 18,
                        )),
                  )),
            ),
            Expanded(
              flex: 1,
              child: Text(' '),
            ),
            Expanded(
                flex: 8,
                child: TextFormField(
                  onChanged: (val) {
                    setState(() {
                      print(number);
                      number = val;
                    });
                  },
                  keyboardType: TextInputType.number,
//                                focusNode: passwordFocusNode,
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    hintText: "请输入手机号码",
                    border: InputBorder.none,
                  ),
                ))
          ],
        ));
  }

  Container buildPassWord() {
    return Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 0.4, color: Colors.grey))),
      child: TextFormField(
        onChanged: (val) {
          print('$password');
            setState(() {
              password = val;
            });
        },
        keyboardType: TextInputType.number,
//                                focusNode: passwordFocusNode,
        controller: _passwordController,
        decoration: InputDecoration(
          hintText: "请输入密码",
          border: InputBorder.none,
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      brightness: Brightness.light,
      elevation: 0,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Colors.black),
    );
  }
  checkInput(){
    return number==null||number==''||password==null||password=='';
  }
  //按钮是否禁用，返回为函数，null
  VoidCallback tapFunction() {
//    print(_phoneNumberController.text);
//    print(_passwordController.text);
//    print(context);
    //  输入账号密码检测
    showDialog(
        context: context,
        child: AlertDialog(
          title: Text('登录失败'),
          content: Text('账号或密码错误'),
        ));
  }

  Widget LoginButton() => Container(
      width: double.infinity,
      child: FlatButton(

        disabledColor: Colors.lightBlueAccent,
        disabledTextColor: Colors.white,
        onPressed: checkInput() ? null :  tapFunction,
        child: Container(
            padding: EdgeInsets.all(15),
            child:
                Text("登录", style: TextStyle(fontSize: 16, letterSpacing: 2))),
        color: Colors.blue,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ));
}
