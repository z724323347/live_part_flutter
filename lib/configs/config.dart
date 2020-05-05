import 'package:flutter/material.dart';

class ConstConfig {}

/// navbar
class HomeNavBar {
  final String name;
  final String icon;
  final String curIcon;
  final int idx;
  final String filePath;

  const HomeNavBar(
      {this.name, this.icon, this.curIcon, this.idx, this.filePath});
}

class HomeTabBar {
  final String name;
  final int icon;
  final int idx;
  final Widget view;

  const HomeTabBar({this.name, this.icon, this.idx, this.view});
}

/// 下拉 tabbar
class DropTabBar {
  final String tag;
  final String platform;
  final String icon;
  final Widget view;
  const DropTabBar({this.tag, this.platform, this.icon, this.view});
}
