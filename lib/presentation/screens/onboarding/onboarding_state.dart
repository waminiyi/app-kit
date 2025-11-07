import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Onboarding state to track current step and completion status
class OnboardingState {
  final int currentStep;
  final bool isCompleted;
  final bool notificationPermissionGranted;

  const OnboardingState({
    this.currentStep = 0,
    this.isCompleted = false,
    this.notificationPermissionGranted = false,
  });

  OnboardingState copyWith({
    int? currentStep,
    bool? isCompleted,
    bool? notificationPermissionGranted,
  }) {
    return OnboardingState(
      currentStep: currentStep ?? this.currentStep,
      isCompleted: isCompleted ?? this.isCompleted,
      notificationPermissionGranted:
          notificationPermissionGranted ?? this.notificationPermissionGranted,
    );
  }

  bool get isFirstStep => currentStep == 0;
  bool get isLastStep => currentStep == totalSteps - 1;
  bool get isShowcaseStep => currentStep >= 0 && currentStep <= 3;
  bool get isNotificationStep => false; // No longer used
  bool get isSignInStep => false; // No longer used
  bool get isPaywallStep => false; // No longer used
  bool get isLoading => false; // Will be managed by notifier if needed

  // Total steps: Welcome (0) + 3 Features (1-3) = 4 steps total
  // Notifications, Auth et Paywall sont gérés en dehors du PageView
  static const int totalSteps = 4;
  static const int showcaseStepsCount = 3;
}

/// Onboarding state notifier
class OnboardingNotifier extends StateNotifier<OnboardingState> {
  static const String _keyOnboardingCompleted = 'onboarding_completed';
  static const String _keyNotificationPermission = 'notification_permission';

  OnboardingNotifier() : super(const OnboardingState()) {
    _loadState();
  }

  Future<void> _loadState() async {
    final prefs = await SharedPreferences.getInstance();
    final isCompleted = prefs.getBool(_keyOnboardingCompleted) ?? false;
    final notificationGranted = prefs.getBool(_keyNotificationPermission) ?? false;

    state = state.copyWith(
      isCompleted: isCompleted,
      notificationPermissionGranted: notificationGranted,
    );
  }

  void nextStep() {
    if (!state.isLastStep) {
      state = state.copyWith(currentStep: state.currentStep + 1);
    }
  }

  void previousStep() {
    if (!state.isFirstStep) {
      state = state.copyWith(currentStep: state.currentStep - 1);
    }
  }

  void goToStep(int step) {
    if (step >= 0 && step < OnboardingState.totalSteps) {
      state = state.copyWith(currentStep: step);
    }
  }

  Future<void> setNotificationPermission(bool granted) async {
    state = state.copyWith(notificationPermissionGranted: granted);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyNotificationPermission, granted);
  }

  Future<void> completeOnboarding() async {
    state = state.copyWith(isCompleted: true);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_keyOnboardingCompleted, true);
  }

  void reset() {
    state = const OnboardingState();
  }

  void skipToPaywall() {
    goToStep(6);
  }

  void skipToEnd() async {
    await completeOnboarding();
  }
}

/// Provider for onboarding state
final onboardingStateProvider =
    StateNotifierProvider<OnboardingNotifier, OnboardingState>((ref) {
  return OnboardingNotifier();
});

