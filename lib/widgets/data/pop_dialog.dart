import 'package:flutter/material.dart';
import 'package:flutter_app/configs/public.dart';

/// diaolg  弹出窗
class PopDialog {
  /// 全局弹窗 AlertDialog
  static void showGlobalAlert(Widget child, bool dismiss) {
    GlobalNavigator.dialog(
        barrierDismissible: dismiss,
        builder: (_) {
          return GestureDetector(
            child: AlertDialog(
              contentPadding: EdgeInsets.all(0),
              backgroundColor: Colors.transparent,
              content: child,
            ),
          );
        });
  }

  /// 全局弹窗 MaterialDialog
  ///
  /// call 回调，部分需求的回调 (如，点击外部消失清空选中数据等)
  static void showGlobalMaterial(Widget child, bool dismiss, {Function call}) {
    GlobalNavigator.dialog(
        barrierDismissible: dismiss,
        builder: (_) {
          return GestureDetector(
            onTap: () {
              if (dismiss) {
                GlobalNavigator.pop();
                if (call != null) {
                  call();
                }
              } else {
                return null;
              }
            },
            child: Material(
              type: MaterialType.transparency,
              child: GestureDetector(onTap: () => null, child: child),
            ),
          );
        });
  }

  /// context 弹窗 AlertDialog
  static void showContextAlert(BuildContext ctx, Widget child, bool dismiss) {
    showDialog<Null>(
      context: ctx,
      barrierDismissible: dismiss,
      builder: (_) => GestureDetector(
        child: AlertDialog(
          contentPadding: EdgeInsets.all(0),
          backgroundColor: Colors.transparent,
          content: child,
        ),
      ),
    );
  }
}
