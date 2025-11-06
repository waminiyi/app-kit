import 'package:flutter/material.dart';
import '../../core/config/app_dimensions.dart';

class SoCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Color? color;
  final double? elevation;
  final VoidCallback? onTap;
  final BorderRadius? borderRadius;

  const SoCard({
    super.key,
    required this.child,
    this.padding,
    this.margin,
    this.color,
    this.elevation,
    this.onTap,
    this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    final card = Card(
      color: color,
      elevation: elevation ?? AppDimensions.elevationSm,
      margin: margin ?? const EdgeInsets.all(AppDimensions.spacing8),
      shape: RoundedRectangleBorder(
        borderRadius:
            borderRadius ?? BorderRadius.circular(AppDimensions.radiusMedium),
      ),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(AppDimensions.spacing16),
        child: child,
      ),
    );

    if (onTap != null) {
      return InkWell(
        onTap: onTap,
        borderRadius:
            borderRadius ?? BorderRadius.circular(AppDimensions.radiusMedium),
        child: card,
      );
    }

    return card;
  }
}
