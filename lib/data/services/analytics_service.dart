import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../core/utils/app_logger.dart';

part 'analytics_service.g.dart';

@riverpod
AnalyticsService analyticsService(AnalyticsServiceRef ref) {
  return AnalyticsService();
}

class AnalyticsService {
  final FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  FirebaseAnalyticsObserver getObserver() {
    return FirebaseAnalyticsObserver(analytics: _analytics);
  }

  Future<void> logEvent(String name, {Map<String, Object>? parameters}) async {
    try {
      await _analytics.logEvent(name: name, parameters: parameters);
      AppLogger.i('Analytics event: $name');
    } catch (e) {
      AppLogger.e('Analytics error', e);
    }
  }

  Future<void> logScreenView(String screenName) async {
    await logEvent('screen_view', parameters: {'screen_name': screenName});
  }

  Future<void> logLogin(String method) async {
    await _analytics.logLogin(loginMethod: method);
  }

  Future<void> logSignUp(String method) async {
    await _analytics.logSignUp(signUpMethod: method);
  }

  Future<void> logPurchase({
    required double value,
    required String currency,
    String? itemId,
  }) async {
    await _analytics.logPurchase(
      value: value,
      currency: currency,
      parameters: itemId != null ? {'item_id': itemId} : null,
    );
  }

  Future<void> setUserId(String userId) async {
    await _analytics.setUserId(id: userId);
  }

  Future<void> setUserProperty(String name, String value) async {
    await _analytics.setUserProperty(name: name, value: value);
  }

  // Paywall Analytics
  Future<void> logPaywallPresented() async {
    await logEvent('paywall_presented');
  }

  Future<void> logPaywallPurchaseCompleted() async {
    await logEvent('paywall_purchase_completed');
  }

  Future<void> logPaywallPurchaseCancelled() async {
    await logEvent('paywall_purchase_cancelled');
  }

  Future<void> logPaywallRestoreCompleted() async {
    await logEvent('paywall_restore_completed');
  }

  Future<void> logPaywallError(String error) async {
    await logEvent('paywall_error', parameters: {'error': error});
  }
}
