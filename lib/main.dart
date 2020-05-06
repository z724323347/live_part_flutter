import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_app/configs/public.dart';
import 'package:flutter_app/generated/l10n.dart';
import 'package:flutter_app/page/attention/attention.dart';
import 'package:flutter_app/page/index.dart';
import 'package:flutter_app/utils/locale/cupertino_localizations_delegate.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'page/index.dart';

// void main() => runApp(MyApp());
void main() {
  print(window.defaultRouteName);
  runApp(MyApp(
    routeName: window.defaultRouteName,
  ));
}

class MyApp extends StatelessWidget {
  final String routeName;
  MyApp({this.routeName});
  // 获取路由名称
  String _getRouteName(String s) {
    if (s.indexOf('?') == -1) {
      return s;
    } else {
      return s.substring(0, s.indexOf('?'));
    }
  }

// 获取参数
  Map<String, dynamic> _getParamsStr(String s) {
    if (s.indexOf('?') == -1) {
      return Map();
    } else {
      return json.decode(s.substring(s.indexOf('?') + 1));
    }
  }

  @override
  Widget build(BuildContext context) {
    //
    // String route = _getRouteName(routeName);
    String route = routeName;
    print('roure :  $route');

    switch (route) {
      case 'routeSquare':
        buildRouteSquare();
        break;
      case 'routeOrder':
        buildRouteOrder();
        break;
      default:
        buildRouteOrder();
        // buildDefault(context);
        break;
    }

    return MaterialApp(
      title: 'Flutter App',
      navigatorKey: GlobalNavigator.navigatorKey,
      theme: ThemeData(platform: TargetPlatform.iOS),
      locale: Locale('zh'),
      localizationsDelegates: [
        S.delegate,
        CupertinoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        print('deviceLocale: $deviceLocale');
        return deviceLocale;
      },
      routes: Routes.routes,
      home: Index(),
    );
  }

  /// 广场
  Widget buildRouteSquare() {
    return MaterialApp(
      title: 'Flutter App',
      navigatorKey: GlobalNavigator.navigatorKey,
      theme: ThemeData(platform: TargetPlatform.iOS),
      locale: Locale('zh'),
      localizationsDelegates: [
        S.delegate,
        CupertinoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        print('deviceLocale: $deviceLocale');
        return deviceLocale;
      },
      routes: Routes.routes,
      home: AttentionIndex(),
    );
  }

  /// 订单
  Widget buildRouteOrder() {
    return MaterialApp(
      title: 'Flutter App',
      navigatorKey: GlobalNavigator.navigatorKey,
      theme: ThemeData(platform: TargetPlatform.iOS),
      locale: Locale('zh'),
      localizationsDelegates: [
        S.delegate,
        CupertinoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        print('deviceLocale: $deviceLocale');
        return deviceLocale;
      },
      routes: Routes.routes,
      home: Index(),
    );
  }

  Widget buildDefault(context) {
    return MaterialApp(
      title: 'Flutter App',
      navigatorKey: GlobalNavigator.navigatorKey,
      theme: ThemeData(platform: TargetPlatform.iOS),
      locale: Locale('zh'),
      localizationsDelegates: [
        S.delegate,
        CupertinoLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      localeResolutionCallback: (deviceLocale, supportedLocales) {
        print('deviceLocale: $deviceLocale');
        return deviceLocale;
      },
      routes: Routes.routes,
      home: Container(
        width: 750,
        height: 1334,
        child: Center(
          child: Text('Unknown route: $routeName',
              textDirection: TextDirection.ltr),
        ),
      ),
    );
  }
}
