import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  final SharedPreferences _prefs;

  LocalStorage(this._prefs);

  static const String _keyIsLoggedIn = 'is_logged_in';
  static const String _keyFcmToken = 'fcm_token';
  static const String _keyUserData = 'user_data';

  Future<void> setLoggedIn(bool value) async {
    await _prefs.setBool(_keyIsLoggedIn, value);
  }

  bool isLoggedIn() {
    return _prefs.getBool(_keyIsLoggedIn) ?? false;
  }

  Future<void> saveFcmToken(String token) async {
    await _prefs.setString(_keyFcmToken, token);
  }

  String? getFcmToken() {
    return _prefs.getString(_keyFcmToken);
  }

  Future<void> saveUserData(String userData) async {
    await _prefs.setString(_keyUserData, userData);
  }

  String? getUserData() {
    return _prefs.getString(_keyUserData);
  }

  Future<void> clearAll() async {
    await _prefs.clear();
  }
}