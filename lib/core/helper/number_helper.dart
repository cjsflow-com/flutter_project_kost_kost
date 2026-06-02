import 'package:intl/intl.dart';
class NumberHelper{
  static String formatNumber(int param, String format){
    return NumberFormat(format, 'id').format(param);
  }
  static String formatIdr(int param){
    return 'Rp.${NumberFormat('#,###','id').format(param)}';
  }
  static String convertTimeStamp(String timeStamp)
  {
    DateTime dateTime = DateTime.parse(timeStamp).toLocal();
    String formattedDate = DateFormat('dd MMMM yyyy', 'id_ID').format(dateTime);
    return formattedDate;
  }
}