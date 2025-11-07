import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/app_dimensions.dart';
import '../../../core/extensions/context_extension.dart';
import '../../../core/routing/app_routes.dart';
import '../../../data/services/local_notification_service.dart';
import '../../widgets/so_button.dart';
import '../auth/auth_screen.dart';
import '../paywall/upgrade_screen.dart';
import 'onboarding_notification_screen.dart';
import 'onboarding_showcase_screen.dart';
import 'onboarding_state.dart';
import 'onboarding_welcome_screen.dart';

class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen> {
  late final PageController _pageController;
  bool _showNotificationScreen = false;
  bool _showAuthScreen = false;
  bool _showPaywallScreen = false;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0);
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int page) {
    setState(() {});
  }

  Future<void> _handleShowcaseContinue() async {
    final currentPage = _pageController.page?.round() ?? 0;

    // Si on est sur la dernière page du showcase (page 3 = 4ème page avec welcome)
    if (currentPage >= 3) {
      // Passer à l'écran de notifications
      setState(() {
        _showNotificationScreen = true;
      });
    } else {
      // Passer à la page suivante du showcase
      await _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  Future<void> _handleNotificationPermission(bool shouldRequest) async {
    final notifier = ref.read(onboardingStateProvider.notifier);

    if (shouldRequest) {
      try {
        final notificationService = ref.read(localNotificationServiceProvider);
        // Initialize first
        await notificationService.initialize();
        // Then request permission
        final granted = await notificationService.requestPermission();

        await notifier.setNotificationPermission(granted);

        if (mounted && granted) {
          context.showSnackBar('Notifications enabled successfully');
        }
      } catch (e) {
        await notifier.setNotificationPermission(false);
      }
    } else {
      await notifier.setNotificationPermission(false);
    }

    // Passer à l'écran d'authentification
    setState(() {
      _showNotificationScreen = false;
      _showAuthScreen = true;
    });
  }

  Future<void> _handleAuthSkipped() async {
    // Passer à l'écran paywall
    setState(() {
      _showAuthScreen = false;
      _showPaywallScreen = true;
    });
  }

  Future<void> _completeOnboarding() async {
    await ref.read(onboardingStateProvider.notifier).completeOnboarding();
    if (mounted) {
      context.go(AppRoutes.home);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Afficher l'écran de paywall
    if (_showPaywallScreen) {
      return UpgradeScreen(
        onPurchaseCompleted: _completeOnboarding,
        onPurchaseCancelled: _completeOnboarding,
        onRestoreCompleted: _completeOnboarding,
        onDismiss: _completeOnboarding,
        onError: (_) => _completeOnboarding(),
      );
    }

    // Afficher l'écran d'authentification
    if (_showAuthScreen) {
      return Scaffold(
        backgroundColor: context.colorScheme.surface,
        body: SafeArea(
          child: Column(
            children: [
              // Bouton Skip
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.spacing16),
                  child: SoButton(
                    text: context.strings.skip,
                    onPressed: _handleAuthSkipped,
                    type: SoButtonType.text,
                  ),
                ),
              ),
              // AuthScreen
              Expanded(
                child: AuthScreen(),
              ),
            ],
          ),
        ),
      );
    }

    // Afficher l'écran de notifications
    if (_showNotificationScreen) {
      return Scaffold(
        backgroundColor: context.colorScheme.surface,
        body: SafeArea(
          child: OnboardingNotificationScreen(
            onAllow: () => _handleNotificationPermission(true),
            onSkip: () => _handleNotificationPermission(false),
          ),
        ),
      );
    }

    // Afficher les showcases dans le PageView
    final currentPage = _pageController.hasClients
        ? (_pageController.page?.round() ?? 0)
        : 0;

    return Scaffold(
      backgroundColor: context.colorScheme.surface,
      body: SafeArea(
        child: Column(
          children: [
            // Skip button (sauf sur la première page)
            if (currentPage > 0)
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: const EdgeInsets.all(AppDimensions.spacing16),
                  child: SoButton(
                    text: context.strings.skip,
                    onPressed: () {
                      // Skip vers la dernière page du showcase
                      _pageController.animateToPage(
                        3,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    type: SoButtonType.text,
                  ),
                ),
              )
            else
              const SizedBox(height: AppDimensions.spacing48),

            // PageView avec showcases
            Expanded(
              child: PageView(
                controller: _pageController,
                onPageChanged: _onPageChanged,
                children: [
                  // Welcome screen
                  const OnboardingWelcomeScreen(),

                  // Showcase screens
                  OnboardingShowcaseScreen(
                    icon: Icons.flash_on_rounded,
                    title: context.strings.onboardingFeature1Title,
                    description: context.strings.onboardingFeature1Description,
                  ),
                  OnboardingShowcaseScreen(
                    icon: Icons.security_rounded,
                    title: context.strings.onboardingFeature2Title,
                    description: context.strings.onboardingFeature2Description,
                    iconColor: context.colorScheme.tertiary,
                  ),
                  OnboardingShowcaseScreen(
                    icon: Icons.sync_rounded,
                    title: context.strings.onboardingFeature3Title,
                    description: context.strings.onboardingFeature3Description,
                    iconColor: context.colorScheme.secondary,
                  ),
                ],
              ),
            ),

            // Page indicator et bouton Continue
            _buildBottomSection(currentPage),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomSection(int currentPage) {
    return Column(
      children: [
        // Page indicator pour les showcase screens (pages 1-3)
        if (currentPage >= 1)
          Padding(
            padding: const EdgeInsets.symmetric(vertical: AppDimensions.spacing24),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  margin: const EdgeInsets.symmetric(
                    horizontal: AppDimensions.spacing4,
                  ),
                  height: AppDimensions.spacing8,
                  width: currentPage - 1 == index
                      ? AppDimensions.spacing32
                      : AppDimensions.spacing8,
                  decoration: BoxDecoration(
                    color: currentPage - 1 == index
                        ? context.colorScheme.primary
                        : context.colorScheme.outlineVariant,
                    borderRadius: BorderRadius.circular(
                      AppDimensions.radiusSmall,
                    ),
                  ),
                ),
              ),
            ),
          )
        else
          const SizedBox(height: AppDimensions.spacing24),

        // Continue button
        Padding(
          padding: const EdgeInsets.fromLTRB(
            AppDimensions.spacing24,
            0,
            AppDimensions.spacing24,
            AppDimensions.spacing32,
          ),
          child: SoButton(
            text: currentPage == 0 ? 'Get Started' : 'Continue',
            onPressed: _handleShowcaseContinue,
            type: SoButtonType.primary,
            fullWidth: true,
          ),
        ),
      ],
    );
  }
}

