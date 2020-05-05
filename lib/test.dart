import 'package:flutter/material.dart';
import 'package:flutter_app/configs/public.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 测试页面
class TestPage extends StatefulWidget {
  @override

  /// 测试页面
  _TestPageState createState() => _TestPageState();
}

/// 测试页面
class _TestPageState extends State<TestPage> {
  String liveUrl1 = 'http://ivi.bupt.edu.cn/hls/cctv5phd.m3u8';
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
      appBar: PrefAppBar(
        leading: BackArrow(),
        title: Text('测试页面'),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Container()
          // Expanded(
          //   child: VideoWindowPlay(
          //     playType: PlayType.network,
          //     dataSource: liveUrl1,
          //   ),
          // ),
          // Expanded(
          //   child: LiveVideoWindowPage(
          //       showBottomWidget: false,
          //       playType: PlayType.network,
          //       dataSource: liveUrl1),
          // )
        ],
      ),
    );
  }
}
