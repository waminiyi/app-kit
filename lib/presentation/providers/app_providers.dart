import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/placeholders/placeholder_screens.dart';
import '../../core/routing/app_routes.dart';

final authStateProvider = StreamProvider<bool>((ref) {
  // Remplacez par votre logique d'authentification
  final authService = ref.watch(authServiceProvider);
  return authService.authStateChanges.map((user) => user != null);
});

final onboardingCompletedProvider = StateProvider<bool>((ref) {
  // Load from SharedPreferences
  return false;
});

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);

  return GoRouter(
    initialLocation: AppRoutes.splash,
    debugLogDiagnostics: true,

    // Refresh router when auth state changes
    refreshListenable: GoRouterRefreshStream(authState.value),

    redirect: (context, state) {
      final isAuthenticated = authState.value ?? false;
      final isOnboarding = state.matchedLocation == AppRoutes.onboarding;
      final isAuthRoute = state.matchedLocation.startsWith('/login') ||
          state.matchedLocation.startsWith('/register') ||
          state.matchedLocation.startsWith('/forgot-password');

      // Check if onboarding is completed (use SharedPreferences)
      final hasSeenOnboarding = ref.read(onboardingCompletedProvider);

      // Redirect logic
      if (!hasSeenOnboarding && !isOnboarding) {
        return AppRoutes.onboarding;
      }

      if (!isAuthenticated && !isAuthRoute && !isOnboarding) {
        return AppRoutes.login;
      }

      if (isAuthenticated && isAuthRoute) {
        return AppRoutes.home;
      }

      return null; // No redirect
    },

    routes: AppRoutes.routes,

    // Error handling
    errorBuilder: (context, state) => ErrorScreen(error: state.error),
  );
});