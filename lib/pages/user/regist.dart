//  Description 仿支付宝注册页面
//  Author Mr.wang
//  Date 2020-05-05 16:48
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/pages/user/agreement.dart';

//import 'package:fluttertoast/fluttertoast.dart';
main() => runApp(MaterialApp(
      home: Register(),
    ));

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  TextEditingController _phoneNumberController;

  @override
  void initState() {
    _phoneNumberController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          brightness: Brightness.light,
          elevation: 0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Container(
          padding: EdgeInsets.all(40),
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: Text('新用户注册', style: TextStyle(fontSize: 28)),
                ),
                Container(
                  padding: EdgeInsets.only(top: 80),
                  child: Text('手机号码', style: TextStyle(fontSize: 14)),
                ),
                Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(width: 0.4, color: Colors.grey))),
                    child: Row(
                      children: <Widget>[
                        Expanded(
                          flex: 2,
                          child: Container(
                              decoration: BoxDecoration(
                                  border: Border(
                                      right: BorderSide(
                                          width: 0.4, color: Colors.grey))),
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
                            child: TextField(
                              keyboardType: TextInputType.number,
                              controller: _phoneNumberController,
//                                focusNode: passwordFocusNode,
                              decoration: InputDecoration(
                                hintText: "请输入手机号码",
                                border: InputBorder.none,
                              ),
                            ))
                      ],
                    )),
                Container(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: registerButton()),
                Text('已阅读并同意以下协议：', style: TextStyle(fontSize: 14)),
                GestureDetector(
                  child: Text('《老年宝服务协议》《老年宝隐私政策》',
                      style: TextStyle(fontSize: 14, color: Colors.blue)),
                  onTap: () {
                    print('跳转协议页面');
//                   Navigator.push(context, MaterialPageRoute(builder: (context) =>Agreement()));
                  },
                ),
              ]),
        ));
  }

  Widget registerButton() => Container(
      width: double.infinity,
      child: FlatButton(
        onPressed: () {
//              if (checkInput()) {
//                Fluttertoast.showToast(
//                    msg: "登录成功",
//                    gravity: ToastGravity.CENTER,
//                    timeInSecForIos: 2,
//                    textColor: Colors.white,
//                    fontSize: 14.0
//                );
//              }
        },
        child: Container(
            padding: EdgeInsets.all(15),
            child: Text("同意协议并注册",
                style: TextStyle(fontSize: 16, letterSpacing: 2))),
        color: Colors.blue,
        textColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
      ));
}
