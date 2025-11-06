import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../core/placeholders/placeholder_screens.dart';
import '../../core/routing/app_routes.dart';
import '../../core/routing/go_router_refresh_stream.dart';
import '../../data/services/supabase_auth_service.dart';

export '../../data/services/supabase_auth_service.dart';
export '../../data/services/user_prefs_service.dart';
export '../../data/services/fcm_service.dart';
export '../../data/services/analytics_service.dart';

final authStateProvider = StreamProvider<bool>((ref) {
  final authService = ref.watch(supabaseAuthServiceProvider);
  return authService.authStateChanges.map((state) => state.session != null);
});

// Current User Provider
final currentUserProvider = Provider((ref) {
  final supabase = ref.watch(supabaseAuthServiceProvider);
  return supabase.currentUser;
});

final onboardingCompletedProvider = StateProvider<bool>((ref) {
  // Load from SharedPreferences
  return false;
});

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);
  final authService = ref.watch(supabaseAuthServiceProvider);

  return GoRouter(
    initialLocation: AppRoutes.splash,
    debugLogDiagnostics: true,

    // Refresh router when auth state changes
    refreshListenable: GoRouterRefreshStream(
      authService.authStateChanges.map((state) => state.session != null),
    ),

    redirect: (context, state) {
      final isAuthenticated = authState.value ?? false;
      final isOnboarding = state.matchedLocation == AppRoutes.onboarding;
      final isAuthRoute = state.matchedLocation.startsWith('/auth') ||
          state.matchedLocation.startsWith('/register') ||
          state.matchedLocation.startsWith('/forgot-password');

      // Check if onboarding is completed (use SharedPreferences)
      final hasSeenOnboarding = ref.read(onboardingCompletedProvider);

      // Redirect logic
      if (!hasSeenOnboarding && !isOnboarding) {
        return AppRoutes.onboarding;
      }

      if (!isAuthenticated && !isAuthRoute && !isOnboarding) {
        return AppRoutes.auth;
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


