import 'package:flutter/material.dart';

import '../../../core/config/app_dimensions.dart';
import '../../../core/extensions/context_extension.dart';

class OnboardingWelcomeScreen extends StatelessWidget {
  const OnboardingWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spacing24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          // App Icon/Logo
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: context.colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(AppDimensions.radiusXXLarge),
            ),
            child: Icon(
              Icons.rocket_launch_rounded,
              size: AppDimensions.iconXl * 1.5,
              color: context.colorScheme.primary,
            ),
          ),
          const SizedBox(height: AppDimensions.spacing48),
          // Title
          Text(
            context.strings.onboardingWelcomeTitle,
            style: context.textTheme.displaySmall?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppDimensions.spacing16),
          // Description
          Text(
            context.strings.onboardingWelcomeDescription,
            style: context.textTheme.bodyLarge?.copyWith(
              color: context.colorScheme.onSurfaceVariant,
            ),
            textAlign: TextAlign.center,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

