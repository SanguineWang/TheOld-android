//  Description 播放器
//  Author Mr.wang
//  Date 2020-05-03 10:13
import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:flutterapp/entity/course_content.dart';
import 'package:flutterapp/pages/learn/content_page.dart';
import 'package:flutterapp/widgets/video_list.dart';
import 'package:video_player/video_player.dart';

import 'app_bar.dart';

class VideoPlayerPage extends StatefulWidget {
  String videoPath;

//  'https://vfx.mtime.cn/Video/2019/02/04/mp4/190204084208765161.mp4'
  VideoPlayerPage(this.videoPath);

  _VideoPlayerPageState createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  VideoPlayerController videoPlayerController;
  ChewieController chewieController;

  @override
  void initState() {
    super.initState();
    print('播放器初始化');
    //配置视频地址  widget.videoPath;
    videoPlayerController = VideoPlayerController.network(widget.videoPath);
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      aspectRatio: 1.7, //宽高比
      autoPlay: true, //自动播放
      looping: false, //循环播放
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BackAppBar(context),
      body: Column(
        //视频播放器
        children: <Widget>[
          Chewie(
            controller: chewieController,
          ),
         Expanded(
           child:videoList(videos)
         )
        ],
      )
//      body: videoList(videos),
    );
  }

  @override
  void dispose() {
    /**
     * 当页面销毁的时候，将视频播放器也销毁
     * 否则，当页面销毁后会继续播放视频！
     */
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
    print('播放器销毁');
  }
}

List<CourseContent> videos = <CourseContent>[
  CourseContent(
      0,
      'https://ksv-video-picture.cdn.bcebos.com/da18015d2948b31c860779f81d2976825e604f88.jpg?x-bce-process=image%2Fresize%2Cm_lfit%2Cw_640%2Ch_360',
      '微信被盗了怎么找回来？',
      'https://ksv-video-publish.cdn.bcebos.com/7738d47839984d5d70e14711e3c77108662df563.mp4?auth_key=1635061828-0-0-c6010a41295ccfa9cef812653b9dc7f0',
      'https://ksv-video-picture.cdn.bcebos.com/014f8ce9e987bae03c83ccfc911aead6e378c0c3.jpg',
      '每日科技fans'),
  CourseContent(
      1,
      'https://ksv-video-picture.cdn.bcebos.com/da18015d2948b31c860779f81d2976825e604f88.jpg?x-bce-process=image%2Fresize%2Cm_lfit%2Cw_640%2Ch_360',
      '微信被盗了怎么找回来？',
      'https://ksv-video-publish.cdn.bcebos.com/7738d47839984d5d70e14711e3c77108662df563.mp4?auth_key=1635061828-0-0-c6010a41295ccfa9cef812653b9dc7f0',
      'https://ksv-video-picture.cdn.bcebos.com/014f8ce9e987bae03c83ccfc911aead6e378c0c3.jpg',
      '小熊科技视..'),
  CourseContent(
      3,
      'https://ksv-video-picture.cdn.bcebos.com/901303e5f13ce771d6803593432c72e90ba05bab.jpg?x-bce-process=image%2Fresize%2Cm_lfit%2Cw_640%2Ch_360',
      '微信被盗了怎么找回来？',
      'https://ksv-video-publish.cdn.bcebos.com/7738d47839984d5d70e14711e3c77108662df563.mp4?auth_key=1635061828-0-0-c6010a41295ccfa9cef812653b9dc7f0',
      'https://ksv-video-picture.cdn.bcebos.com/014f8ce9e987bae03c83ccfc911aead6e378c0c3.jpg',
      '小熊科技视..'),
  CourseContent(
      4,
      'https://ksv-video-picture.cdn.bcebos.com/fb2d368efc7a82f674f140978cd0596a2cd9825b.jpg?x-bce-process=image%2Fresize%2Cm_lfit%2Cw_640%2Ch_360',
      '微信被盗了怎么找回来？',
      'https://ksv-video-publish.cdn.bcebos.com/7738d47839984d5d70e14711e3c77108662df563.mp4?auth_key=1635061828-0-0-c6010a41295ccfa9cef812653b9dc7f0',
      'https://ksv-video-picture.cdn.bcebos.com/014f8ce9e987bae03c83ccfc911aead6e378c0c3.jpg',
      '小熊科技视..'),
];
