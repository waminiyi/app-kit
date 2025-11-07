import 'package:flutter/cupertino.dart';
import 'package:purchases_flutter/models/customer_info_wrapper.dart';
import 'package:purchases_flutter/models/package_wrapper.dart';
import 'package:purchases_flutter/models/purchases_error.dart';
import 'package:purchases_flutter/models/store_transaction.dart';
import 'package:purchases_ui_flutter/views/paywall_view.dart';

import '../../../data/services/analytics_service.dart';

class UpgradeScreen extends StatelessWidget {
  final VoidCallback? onPurchaseCompleted;
  final VoidCallback? onPurchaseCancelled;
  final VoidCallback? onRestoreCompleted;
  final VoidCallback? onDismiss;
  final Function(String error)? onError;

  const UpgradeScreen(
      {super.key,
      this.onPurchaseCompleted,
      this.onRestoreCompleted,
      this.onPurchaseCancelled,
      this.onError,
      this.onDismiss});

  @override
  Widget build(BuildContext context) {
    final analytics = AnalyticsService();

    analytics.logPaywallPresented();

    return PaywallView(
      onPurchaseCompleted:
          (CustomerInfo customerInfo, StoreTransaction transaction) {
        analytics.logPaywallPurchaseCompleted();
        onPurchaseCompleted?.call();
      },
      onPurchaseCancelled: () {
        analytics.logPaywallPurchaseCancelled();
        onPurchaseCancelled?.call();
      },
      onPurchaseError: (PurchasesError error) {
        analytics.logPaywallError(error.message);
        onError?.call(error.message);
      },
      onPurchaseStarted: (Package package) {},
      onRestoreCompleted: (CustomerInfo customerInfo) {
        analytics.logPaywallRestoreCompleted();
        onRestoreCompleted?.call();
      },
      onDismiss: () {
        onDismiss?.call();
      },
    );
  }
}
