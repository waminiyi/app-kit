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
  // Observer uniquement isCompleted pour éviter les reconstructions à chaque step
  final hasSeenOnboarding = ref.watch(onboardingStateProvider.select((state) => state.isCompleted));

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


      // Redirect logic
      // 1. Si l'onboarding n'est pas terminé, rediriger vers l'onboarding
      if (!hasSeenOnboarding && !isOnboarding && !isSplash) {
        return AppRoutes.onboarding;
      }

      // 2. Si l'utilisateur est authentifié et sur une page d'auth, rediriger vers home
      if (isAuthenticated && isAuthRoute) {
        return AppRoutes.home;
      }

      // 3. Ne PAS forcer la redirection vers /auth si l'onboarding est complété
      // L'authentification est optionnelle dans ce starter kit

      return null; // No redirect
    },

    routes: AppRoutes.routes,

    // Error handling
    errorBuilder: (context, state) => ErrorScreen(error: state.error),
  );
});
