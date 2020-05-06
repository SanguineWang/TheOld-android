import 'package:flutter/material.dart';
import 'package:flutterapp/entity/course_content.dart';
import 'package:flutterapp/widgets/app_bar.dart';
import 'package:flutterapp/widgets/video_player.dart';
//内容页 包括一个 videoview和一个listvideo
class ContentPage extends StatefulWidget {
  int courseId;
  ContentPage({this.courseId});

  @override
  _ContentPageState createState() => _ContentPageState();
}

class _ContentPageState extends State<ContentPage> {
  @override
  Widget build(BuildContext context) {
    return VideoPlayerPage('https://ksv-video-publish.cdn.bcebos.com/7738d47839984d5d70e14711e3c77108662df563.mp4?auth_key=1635061828-0-0-c6010a41295ccfa9cef812653b9dc7f0');
  }
}

final paths = [
  'https://ksv-video-publish.cdn.bcebos.com/7738d47839984d5d70e14711e3c77108662df563.mp4?auth_key=1635061828-0-0-c6010a41295ccfa9cef812653b9dc7f0',
  'https://ksv-video-publish.cdn.bcebos.com/47efbcacf1db4fed4a6017fadbb6773e2390b3a7.mp4?auth_key=1635061828-0-0-6205ffd2812a20285eb46e474928e21f',
  'https://ksv-video-publish.cdn.bcebos.com/9054e74b5fbe3fc101c4bd90d258d016e8783427.mp4?auth_key=1635061828-0-0-8f6f61b8f7b8984485489c0777d250b3',
  'https://ksv-video-publish.cdn.bcebos.com/1495c4c2fb8a1cf524014bec6a22f9015f24fdb3.mp4?auth_key=1635062413-0-0-699342682bdb62cbf846eb88ac778d4d'
];
