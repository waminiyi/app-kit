import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../core/routing/app_routes.dart';
import '../../core/routing/go_router_refresh_stream.dart';
import '../../data/services/supabase_auth_service.dart';
import '../screens/error/error_screen.dart';
import '../screens/onboarding/onboarding_state.dart';

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

// Onboarding Completed Provider
final onboardingCompletedProvider = FutureProvider<bool>((ref) async {
  final prefs = await SharedPreferences.getInstance();
  return prefs.getBool('onboarding_completed') ?? false;
});

final routerProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);
  final authService = ref.watch(supabaseAuthServiceProvider);
  final onboardingState = ref.watch(onboardingStateProvider);

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
      final isSplash = state.matchedLocation == AppRoutes.splash;
      final isAuthRoute = state.matchedLocation.startsWith('/auth') ||
          state.matchedLocation.startsWith('/register') ||
          state.matchedLocation.startsWith('/forgot-password');

      // Check if onboarding is completed
      final hasSeenOnboarding = onboardingState.isCompleted;

      // Redirect logic
      if (!hasSeenOnboarding && !isOnboarding && !isSplash) {
        return AppRoutes.onboarding;
      }

      if (!isAuthenticated && !isAuthRoute && !isOnboarding && !isSplash) {
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
