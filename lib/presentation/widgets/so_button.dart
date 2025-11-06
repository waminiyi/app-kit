import 'package:flutter/material.dart';
import '../../core/config/app_dimensions.dart';

enum SoButtonType { primary, secondary, outlined, text }

enum SoButtonSize { small, medium, large }

class SoButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final SoButtonType type;
  final SoButtonSize size;
  final bool isLoading;
  final Widget? icon;
  final bool fullWidth;

  const SoButton({
    super.key,
    required this.text,
    this.onPressed,
    this.type = SoButtonType.primary,
    this.size = SoButtonSize.medium,
    this.isLoading = false,
    this.icon,
    this.fullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final height = _getHeight();

    Widget button;

    switch (type) {
      case SoButtonType.primary:
        button = ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            minimumSize: Size(fullWidth ? double.infinity : 0, height),
          ),
          child: _buildContent(theme),
        );
        break;
      case SoButtonType.secondary:
        button = ElevatedButton(
          onPressed: isLoading ? null : onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: theme.colorScheme.secondary,
            minimumSize: Size(fullWidth ? double.infinity : 0, height),
          ),
          child: _buildContent(theme),
        );
        break;
      case SoButtonType.outlined:
        button = OutlinedButton(
          onPressed: isLoading ? null : onPressed,
          style: OutlinedButton.styleFrom(
            minimumSize: Size(fullWidth ? double.infinity : 0, height),
          ),
          child: _buildContent(theme),
        );
        break;
      case SoButtonType.text:
        button = TextButton(
          onPressed: isLoading ? null : onPressed,
          style: TextButton.styleFrom(
            minimumSize: Size(fullWidth ? double.infinity : 0, height),
          ),
          child: _buildContent(theme),
        );
        break;
    }

    return button;
  }

  Widget _buildContent(ThemeData theme) {
    if (isLoading) {
      return SizedBox(
        height: 20,
        width: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          valueColor: AlwaysStoppedAnimation<Color>(
            type == SoButtonType.outlined || type == SoButtonType.text
                ? theme.colorScheme.primary
                : Colors.white,
          ),
        ),
      );
    }

    if (icon != null) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          icon!,
          const SizedBox(width: AppDimensions.spacing8),
          Text(text),
        ],
      );
    }

    return Text(text);
  }

  double _getHeight() {
    switch (size) {
      case SoButtonSize.small:
        return AppDimensions.buttonHeightSmall;
      case SoButtonSize.medium:
        return AppDimensions.buttonHeight;
      case SoButtonSize.large:
        return AppDimensions.buttonHeightLarge;
    }
  }
}
