import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  static const userLoggedInKey = "USER_LOGGED_IN";

  static late SharedPreferences _prefs;

  static const userToken = "USER_TOKEN";

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  static Future<void> setIsUserLoggedIn({required bool value}) async {
    await _prefs.setBool(userLoggedInKey, value);
  }

  static bool? getIsUserLoggedIn() {
    return _prefs.getBool(userLoggedInKey);
  }

  static Future<void> setUserToken({required String userTokenValue}) async {
    await _prefs.setString(userToken, userTokenValue);
  }

  static String? getUserToken(){
    return _prefs.getString(userToken);
  }
}
