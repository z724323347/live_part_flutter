// import 'package:date_range_picker/date_range_picker.dart';
// import 'package:flutter_complex/configs/public.dart';

// /// 时间 utils
// class TimeUtil {
//   /// 日历时间选择
//   ///
//   /// day  默认选中多少天
//   /// 
//   /// after  是否向后选日期 ，默认向后true ， 向前选日期 false
//   ///
//   ///firstDate 开始年月
//   ///
//   ///lastDate 结束年月
//   ///
//   ///  return List<DateTime> picked
//   Future<List<DateTime>> picked(
//     context, {
//     int day,
//     bool after = true,
//     DateTime firstDate,
//     DateTime lastDate,
//   }) async {
//     final List<DateTime> picked = await showDatePicker(
//       context: context,
//       initialFirstDate: after ? DateTime.now() : DateTime.now().subtract(Duration(days: day ?? 7)),
//       initialLastDate: after ? DateTime.now().add(Duration(days: day ?? 7)) : DateTime.now(),
//       firstDate: firstDate ?? DateTime(2015),
//       lastDate: lastDate ?? DateTime(2030),
//     );
//     // if (picked != null && picked.length == 2) {
//     //   print( 'TimeUtil   ${picked}');
//     // }
//     return picked;
//   }

//   /// 选择 今天之后的多少天
//   static List<DateTime> getDayList(int day) {
//     List<DateTime> dl = [];
//     for (var i = 0; i < day; i++) {
//       DateTime d = DateTime.now().add(Duration(days: i));
//       dl.add(d);
//     }
//     return dl;
//   }

//   /// 选择 今天之前的多少天
//   static List<DateTime> getBeforeDayList(int day) {
//     List<DateTime> dl = [];
//     for (var i = 0; i < day; i++) {
//       DateTime d = DateTime.now().subtract(Duration(days: i));
//       dl.add(d);
//     }
//     return dl;
//   }

//   /// 小时转日期
//   static getDays(hours) {
//     var date;
//     DateTime today = new DateTime.now();
//     DateTime _date = today.subtract(new Duration(hours: hours));
//     // date = new DateFormat('yyyy-MM-dd HH:mm:ss').format(_date).toString();
//     date = DateUtil.getDateStrByTimeStr(_date.toString(),
//         format: DateFormat.NORMAL);
//     return date;
//   }
// }
