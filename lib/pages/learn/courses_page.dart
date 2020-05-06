import 'package:flutter/material.dart';
import 'package:flutterapp/entity/description.dart';
import 'package:flutterapp/widgets/top_nav_bar.dart';

class CoursesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TopNavBar(options,context);
  }
}

var card = ['内容个数', '来源', '标题', '收藏量', '分类'];
List<Description> options = [
  Description(0, '微信', 'wechat', '一款跨平台的通讯工具。支持单人、多人参与。通过手机网络发送语音、图片、视频和文字。'),
  Description(1, 'QQ', 'qq',
      '腾讯QQ,8亿人在用的即时通讯软件,你不仅可以在各类通讯终端上通过QQ聊天交友,还能进行免费的视频、语音通话,或者随时随地收发重要文件。'),
  Description(2, '支付宝', 'zhifubao',
      '支付宝,全球领先的独立第三方支付平台,致力于为广大用户提供安全快速的电子支付/网上支付/安全支付/手机支付体验,及转账收款/水电煤缴费/信用卡还款/AA收款等生活...'),
  Description(3, '淘宝', 'taobao',
      '淘宝网是中国深受欢迎的网购零售平台，拥有近5亿的注册用户数，每天有超过6000万的固定访客，同时每天的在线商品数已经超过了8亿件，平均每分钟售出4.8万件商品。')
];
