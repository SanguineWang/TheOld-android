//  Description 课程卡片
//  Author Mr.wang
//  Date 2020-05-02 23:06
import 'package:flutter/material.dart';
import 'package:flutterapp/entity/description.dart';
import 'package:flutterapp/pages/learn/content_page.dart';

import 'my_button.dart';

class ChoiceCardWidget extends StatelessWidget {
  final Description option;

  ChoiceCardWidget({Key key, this.option}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: Card(
        shape: RoundedRectangleBorder(
            side: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(5))),
        color: Colors.white,
        child: Center(
            child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset('assets/images/${option.image}.jpg',
                    height: 50, width: 50),
                Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 20),
                  child: Text(
                    option.title,
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                option.words,
                style: TextStyle(fontSize: 15),
              ),
            ),
            Center(
//                padding: EdgeInsets.fromLTRB(0.0, 20.0, 20.0, 0.0),
              child: MyButton('打开',
                  action: ContentPage(courseId: option.id), context: context),
            )
          ],
        )),
      ),
    );
  }
}
