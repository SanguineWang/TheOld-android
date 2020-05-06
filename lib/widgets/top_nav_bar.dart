//  Description 顶部导航
//  Author Mr.wang
//  Date 2020-05-02 17:32
import 'package:flutter/material.dart';
import 'package:flutterapp/entity/description.dart';
import 'package:flutterapp/widgets/drawer.dart';
import 'choose_card.dart';

Widget TopNavBar(options,context) => DefaultTabController(
      length: options.length,
      child: Scaffold(
        drawer: SmartDrawer(
          child: Mydrawer(context),
        ),
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey
          ),
          centerTitle: true,
          backgroundColor:  Colors.white,
          elevation: 0,
          brightness: Brightness.light,
          title: Text(
              '课程库',
            style: TextStyle(
                    color: Colors.blue
            ),),
          bottom: TabBar(
            labelColor: Colors.blue,//选中label颜色
            unselectedLabelColor: Colors.grey,//未选中label颜色
            indicatorColor: Colors.blue,
            isScrollable: true,
            tabs: options
                .map<Widget>((Description option) => Tab(
                      text: option
                          .title, //                icon: Icon(option.iconData),
                    ))
                .toList(),
          ),
        ),
        body: TabBarView(
          children: options.map<Widget>((Description option) {
            return Padding(
              padding: EdgeInsets.all(20.0),
              child: ChoiceCardWidget(
                option: option,
              ),
            );
          }).toList(),
        ),
      ),
    );


