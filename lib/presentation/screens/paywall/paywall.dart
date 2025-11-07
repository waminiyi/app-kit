import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:purchases_ui_flutter/purchases_ui_flutter.dart';

import '../../../core/utils/app_logger.dart';
import '../../../data/services/analytics_service.dart';

Future<void> presentPaywall(
  WidgetRef ref, {
  VoidCallback? onPurchaseCompleted,
  VoidCallback? onPurchaseCancelled,
  VoidCallback? onRestoreCompleted,
  void Function(String error)? onError,
}) async {
  final analytics = ref.read(analyticsServiceProvider);

  try {
    // Log l'ouverture du paywall
    await analytics.logPaywallPresented();

    final result = await RevenueCatUI.presentPaywall();

    switch (result) {
      case PaywallResult.purchased:
        AppLogger.i('Purchase completed');
        final info = await Purchases.getCustomerInfo();
        AppLogger.i('Active entitlements: ${info.entitlements.active.keys}');

        // Log l'achat réussi
        await analytics.logPaywallPurchaseCompleted();

        onPurchaseCompleted?.call();
        break;

      case PaywallResult.cancelled:
        AppLogger.w('Purchase cancelled');

        // Log l'annulation
        await analytics.logPaywallPurchaseCancelled();

        onPurchaseCancelled?.call();
        break;

      case PaywallResult.restored:
        AppLogger.i('Purchase restored');

        // Log la restauration
        await analytics.logPaywallRestoreCompleted();

        onRestoreCompleted?.call();
        break;

      case PaywallResult.error:
        AppLogger.e('Paywall error occurred', 'Paywall error $result');

        // Log l'erreur
        await analytics.logPaywallError('Paywall error $result');

        onError?.call('Paywall error');
        break;

      default:
        AppLogger.w('Unknown paywall result: $result');
        await analytics.logPaywallError('Unknown paywall result: $result');
    }
  } catch (e, s) {
    AppLogger.e('Paywall error', e, s);

    // Log l'exception
    await analytics.logPaywallError(e.toString());

    onError?.call(e.toString());
  }
}
