//  Description 按钮
//  Author Mr.wang
//  Date 2020-05-01 17:32
import 'package:flutter/material.dart';

//button 扁平化
Widget MyButton(text, {action, context}) => Container(
      child: FlatButton(
        shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(50))),
        onPressed: () {
          print(action);
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => action,
            ),
          );
          print('Click myButton');
        },
        color: Colors.lightBlueAccent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text(text,
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Icon(Icons.open_in_new, color: Colors.white),
          ],
        ),
        splashColor: Colors.lightBlue, // 波纹颜色
      ),
    );

Widget LogOutButton(text) => Container(
      child: RaisedButton(
        shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        // 具有阴影效果的按钮
        onPressed: () {
          print('LogOutButton');
        },
        color: Colors.red,
//        splashColor: Colors.blue, // 波纹颜色
        child: Text(text,
        style: TextStyle(
          color: Colors.white
        ),),
      ),
    );
