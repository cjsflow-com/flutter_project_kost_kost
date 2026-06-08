import 'package:shared_preferences/shared_preferences.dart';
class SharedPreferencesHelper{
  static setSting(String key, String value) async {
    final pref = await SharedPreferences.getInstance();
    pref.setString(key, value);
  }

  static setInt(String key, int value) async{
    final pref = await SharedPreferences.getInstance();
    pref.setInt(key, value);
  }

  static getString(String key) async {
    final pref = await SharedPreferences.getInstance();
    await Future.delayed(const Duration(seconds: 2));
    return pref.getString(key);
  }

  static getInt(String key) async {
    final pref = await SharedPreferences.getInstance();
    await Future.delayed(const Duration(seconds: 2));
    return pref.getInt(key);
  }

  static logout() async {
    final pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}