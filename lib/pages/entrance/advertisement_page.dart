import 'dart:async';

import 'package:flutter/material.dart';

class AdvertisementPage extends StatefulWidget {
  @override
  _AdvertisementPageState createState() => _AdvertisementPageState();
}

class _AdvertisementPageState extends State<AdvertisementPage> {
  int time=3;
  Timer _timer;
  startTime() async {
    //设置数字更改时间
    var _duration = Duration(seconds: 1);
    Timer(_duration, () {
      // 空等1秒之后再计时
      _timer = Timer.periodic(const Duration(milliseconds: 1000), (v) {
        time--;
        if (time != 0) {
          setState(() {});
        }else{
          _timer.cancel();
          goIndexPage();
        }
      });
      return _timer;
    });
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _MySplashScreen(),
    );
  }

  // 页面跳转
  void goIndexPage() {
    time=0;
    Navigator.of(context).pushReplacementNamed('/index');
  }
  Widget _MySplashScreen() => Stack(
    alignment: const Alignment(1.0, -1.0), // 右上角对齐
    children: [
      ConstrainedBox(
        constraints: BoxConstraints.expand(),
        child: Image.asset(
          "assets/images/advertisement2.jpg",//广告图
          width: double.infinity,
          fit: BoxFit.fill,
          height: double.infinity,
        ),
      ),
      Padding(
        padding: EdgeInsets.fromLTRB(0.0, 30.0, 20.0, 0.0),
        child: FlatButton( //跳过广告按钮
          shape: RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.all(
                  Radius.circular(50))),
          onPressed: () {
            print('广告结束，进入主页');
            _timer.cancel();
            goIndexPage();
          },
          color: Colors.white10,
          child: Text(
            "跳过广告 $time ",
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      )
    ],
  );
}
