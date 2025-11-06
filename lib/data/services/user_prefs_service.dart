import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/utils/app_logger.dart';

part 'user_prefs_service.g.dart';

@riverpod
UserPrefsService userPrefsService(UserPrefsServiceRef ref) {
  return UserPrefsService();
}

class UserPrefsService {
  static const String _keyThemeMode = 'theme_mode';
  static const String _keyOnboardingComplete = 'onboarding_complete';
  static const String _keyFcmToken = 'fcm_token';

  SharedPreferences? _prefs;

  Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
    AppLogger.i('SharedPreferences initialized');
  }

  // Theme
  Future<void> setThemeMode(String mode) async {
    await _prefs?.setString(_keyThemeMode, mode);
  }

  String getThemeMode() {
    return _prefs?.getString(_keyThemeMode) ?? 'system';
  }

  // Onboarding
  Future<void> setOnboardingComplete(bool complete) async {
    await _prefs?.setBool(_keyOnboardingComplete, complete);
  }

  bool isOnboardingComplete() {
    return _prefs?.getBool(_keyOnboardingComplete) ?? false;
  }

  // FCM Token
  Future<void> setFcmToken(String token) async {
    await _prefs?.setString(_keyFcmToken, token);
  }

  String? getFcmToken() {
    return _prefs?.getString(_keyFcmToken);
  }

  // Generic
  Future<void> setString(String key, String value) async {
    await _prefs?.setString(key, value);
  }

  String? getString(String key) {
    return _prefs?.getString(key);
  }

  Future<void> setBool(String key, bool value) async {
    await _prefs?.setBool(key, value);
  }

  bool? getBool(String key) {
    return _prefs?.getBool(key);
  }

  Future<void> setInt(String key, int value) async {
    await _prefs?.setInt(key, value);
  }

  int? getInt(String key) {
    return _prefs?.getInt(key);
  }

  Future<void> remove(String key) async {
    await _prefs?.remove(key);
  }

  Future<void> clear() async {
    await _prefs?.clear();
  }
}
