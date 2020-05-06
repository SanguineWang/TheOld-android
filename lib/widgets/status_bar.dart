//  Description  状态栏样式
//  Author Mr.wang
//  Date 2020-05-04 16:59

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//状态栏样式 沉浸式状态栏
SystemUiOverlayStyle light = SystemUiOverlayStyle(
  systemNavigationBarColor: Color(0xFF000000),
  systemNavigationBarDividerColor: null,
  /// 注意安卓要想实现沉浸式的状态栏 需要底部设置透明色
  statusBarColor: Colors.transparent,
  systemNavigationBarIconBrightness: Brightness.light,
  statusBarIconBrightness: Brightness.light,
  statusBarBrightness: Brightness.dark,
);
// 黑色沉浸式状态栏颜色 黑色文字
SystemUiOverlayStyle dark = SystemUiOverlayStyle(
  systemNavigationBarColor: Color(0xFF000000),
  systemNavigationBarDividerColor: null,
  /// 注意安卓要想实现沉浸式的状态栏 需要底部设置透明色
  statusBarColor: Colors.transparent,
  systemNavigationBarIconBrightness: Brightness.light,
  statusBarIconBrightness: Brightness.dark,
  statusBarBrightness: Brightness.light,
);
//SystemChrome.setSystemUIOverlayStyle(light) 调用