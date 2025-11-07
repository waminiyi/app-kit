import 'package:flutter/material.dart';

import '../../../core/config/app_dimensions.dart';
import '../../../core/extensions/context_extension.dart';
import '../../widgets/so_button.dart';

class OnboardingNotificationScreen extends StatelessWidget {
  final VoidCallback onAllow;
  final VoidCallback onSkip;

  const OnboardingNotificationScreen({
    super.key,
    required this.onAllow,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppDimensions.spacing24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          // Icon
          Container(
            width: 120,
            height: 120,
            decoration: BoxDecoration(
              color: context.colorScheme.tertiaryContainer,
              borderRadius: BorderRadius.circular(AppDimensions.radiusXXLarge),
            ),
            child: Icon(
              Icons.notifications_active_rounded,
              size: AppDimensions.iconXl * 1.5,
              color: context.colorScheme.tertiary,
            ),
          ),
          const SizedBox(height: AppDimensions.spacing48),
          // Title
          Text(
            context.strings.onboardingNotificationTitle,
            style: context.textTheme.headlineMedium?.copyWith(
              fontWeight: FontWeight.bold,
              color: context.colorScheme.onSurface,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: AppDimensions.spacing16),
          // Description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppDimensions.spacing16),
            child: Text(
              context.strings.onboardingNotificationDescription,
              style: context.textTheme.bodyLarge?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
          // Buttons
          Column(
            children: [
              SoButton(
                text: context.strings.onboardingNotificationAllow,
                onPressed: onAllow,
                type: SoButtonType.primary,
                fullWidth: true,
              ),
              const SizedBox(height: AppDimensions.spacing12),
              SoButton(
                text: context.strings.onboardingNotificationSkip,
                onPressed: onSkip,
                type: SoButtonType.text,
                fullWidth: true,
              ),
            ],
          ),
          const SizedBox(height: AppDimensions.spacing24),
        ],
      ),
    );
  }
}

