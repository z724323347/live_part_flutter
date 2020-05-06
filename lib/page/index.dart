import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/configs/public.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

/// 订单页
class Index extends StatefulWidget {
  @override
  _IndexState createState() => _IndexState();
}

class _IndexState extends State<Index> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 750, height: 1334)..init(context);
    return Scaffold(
      appBar: PrefAppBar(
        leading: BackArrow(
          callBack: () {
            /// 退出flutter部分
            SystemChannels.platform.invokeMethod('SystemNavigator.pop');
          },
        ),
        title: Text('我的订单'),
      ),
      body: Container(
          child: Column(children: <Widget>[
        OutlineButton(
          onPressed: () {
            GlobalNavigator.pushNamed('/testPage');
          },
          child: Text('Test'),
        ),
      ])),
    );
  }
}
