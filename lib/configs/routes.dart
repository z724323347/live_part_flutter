import 'package:flutter/material.dart';
import 'package:flutter_app/test.dart';


class Routes {
  static Map<String, WidgetBuilder> routes = {
    // test page 测试页面入口
    '/testPage': (_) => TestPage(),

    // 启动页
    // '/splash': (_) => Splash(),
    // // App首页
    // '/index': (_) => Index(),
    // // Login 页面
    // '/login': (_) => Login(),
    // // register
    // '/register': (_) => Register(),
    
  };

  /// 路由采集悬浮窗路由表
  // static Map<String, WidgetBuilder> navigateCollector = {
  //   '/lotteryBettingRecord': (_) => LotteryRecordIndex(),
  //   '/lotteryHall': (_) => LotteryHall(),
  //   '/lotteryBet': (_) => LotteryBetIndex()
  // };

  static var onGenerateRoute = (RouteSettings settings) {
    final String name = settings.name;
    final Function pageContentBuilder = routes[name];
    if (pageContentBuilder != null) {
      if (settings.arguments != null) {
        final Route route = MaterialPageRoute(
            builder: (context) =>
                pageContentBuilder(context, arguments: settings.arguments));
        return route;
      } else {
        final Route route = MaterialPageRoute(
            builder: (context) => pageContentBuilder(context));
        return route;
      }
    }
  };
}
