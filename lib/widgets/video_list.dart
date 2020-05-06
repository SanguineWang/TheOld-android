//  Description 视频列表
//  Author Mr.wang
//  Date 2020-05-03 14:15
import 'package:flutter/material.dart';
import 'package:flutterapp/entity/course_content.dart';
import 'package:flutterapp/pages/learn/content_page.dart';

Widget videoList(List<CourseContent> items) => ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return SubscribeAccountCard(items[index]);
      },
    );

Widget SubscribeAccountCard(CourseContent item) => Container(
    padding: EdgeInsets.only(left: 8, right: 8),
    decoration: BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(width: 0.2, color: Colors.grey))),
    child: ListTile(
      leading: ClipRRect(
        borderRadius: BorderRadius.circular(5),
        child: Image.network(
          item.cover,
//        Image.asset('assets/images/${item.cover}.jpg',//本地图片
//                    width: 70,
//                    height: 70,
          fit: BoxFit.contain,
        ),
      ),
      title: Text(item.title, style: TextStyle(fontSize: 17)),
      subtitle: Row(
        children: <Widget>[
          Image.network(item.icon, width: 10, height: 10),
          Text(
            item.author,
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
      onTap: (){
        print('click ${item.id} ');
      },
    )
//
//      Center(
//        child: Row(
//          mainAxisAlignment: MainAxisAlignment.center,
//          children: <Widget>[
//            Expanded(
//              child: Padding(
//                  padding: const EdgeInsets.all(8.0),
//                  child: ClipRRect(
//                    borderRadius: BorderRadius.circular(10),
//                    child: Image.network(
//                      item.cover,
////        Image.asset('assets/images/${item.cover}.jpg',//本地图片
////                    width: 70,
////                    height: 70,
//                      fit: BoxFit.contain,
//                    ),
//                  )),
//            ),
//            Expanded(
//              child: Column(
////                crossAxisAlignment: CrossAxisAlignment.start,
//                mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                children: <Widget>[
//                  Align(
//                    alignment: FractionalOffset.topLeft,
//                    child: Padding(
//                      padding: const EdgeInsets.only(bottom: 8.0),
//                      child: Text(item.title, style: TextStyle(fontSize: 17)),
//                    ),
//                  ),
//                  Align(
//                    alignment: FractionalOffset.bottomLeft,
//                    child: Row(
//                      children: <Widget>[
//                        Image.network(item.icon, width: 10, height: 10),
//                        Text(
//                          item.author,
//                          style: TextStyle(color: Colors.grey),
//                        )
//                      ],
//                    ),
//                  )
//                ],
//              ),
//            )
//          ],
//        ),
//      ),
    );
