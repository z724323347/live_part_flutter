import 'package:flutter/material.dart';
import 'package:flutter_app/configs/public.dart';
import 'package:flutter_app/generated/l10n.dart';

class Language {
  static BuildContext context = GlobalNavigator.navigatorKey.currentState.overlay.context;
  static S of() => S.of(context);
}