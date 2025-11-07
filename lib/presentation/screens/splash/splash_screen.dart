import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/routing/app_routes.dart';
import '../../providers/app_providers.dart';
import '../onboarding/onboarding_state.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    // Capture values before any async operation
    final hasSeenOnboarding = ref.read(onboardingStateProvider).isCompleted;
    final isAuthenticated = ref.read(authStateProvider).value ?? false;

    // Initialize services
    await Future.delayed(const Duration(seconds: 2));

    // Check if widget is still mounted before navigating
    if (!mounted) return;

    // Navigate based on state
    if (!hasSeenOnboarding) {
      context.go(AppRoutes.onboarding);
    } else {
      // Après l'onboarding, toujours aller vers home
      // L'authentification est optionnelle dans ce starter kit
      context.go(AppRoutes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlutterLogo(size: 100),
            SizedBox(height: 24),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
