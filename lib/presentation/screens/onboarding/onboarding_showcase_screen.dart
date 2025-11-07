import 'package:flutter/material.dart';

import '../../../core/config/app_dimensions.dart';
import '../../../core/extensions/context_extension.dart';

class OnboardingShowcaseScreen extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final Color? iconColor;

  const OnboardingShowcaseScreen({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    this.iconColor,
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
              color: (iconColor ?? context.colorScheme.primary).withOpacity(0.1),
              borderRadius: BorderRadius.circular(AppDimensions.radiusXXLarge),
            ),
            child: Icon(
              icon,
              size: AppDimensions.iconXl * 1.5,
              color: iconColor ?? context.colorScheme.primary,
            ),
          ),
          const SizedBox(height: AppDimensions.spacing48),
          // Title
          Text(
            title,
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
              description,
              style: context.textTheme.bodyLarge?.copyWith(
                color: context.colorScheme.onSurfaceVariant,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

