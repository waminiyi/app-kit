import 'package:flutter/material.dart';
import '../../core/config/app_dimensions.dart';
import 'so_button.dart';

class SoDialog extends StatelessWidget {
  final String title;
  final String? content;
  final Widget? contentWidget;
  final String? confirmText;
  final String? cancelText;
  final VoidCallback? onConfirm;
  final VoidCallback? onCancel;
  final bool isDangerous;

  const SoDialog({
    super.key,
    required this.title,
    this.content,
    this.contentWidget,
    this.confirmText,
    this.cancelText,
    this.onConfirm,
    this.onCancel,
    this.isDangerous = false,
  });

  static Future<bool?> show(
    BuildContext context, {
    required String title,
    String? content,
    Widget? contentWidget,
    String? confirmText,
    String? cancelText,
    bool isDangerous = false,
  }) {
    return showDialog<bool>(
      context: context,
      builder: (context) => SoDialog(
        title: title,
        content: content,
        contentWidget: contentWidget,
        confirmText: confirmText,
        cancelText: cancelText,
        isDangerous: isDangerous,
        onConfirm: () => Navigator.of(context).pop(true),
        onCancel: () => Navigator.of(context).pop(false),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: contentWidget ?? (content != null ? Text(content!) : null),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimensions.radiusMedium),
      ),
      actions: [
        if (cancelText != null)
          SoButton(
            text: cancelText!,
            type: SoButtonType.text,
            onPressed: onCancel ?? () => Navigator.of(context).pop(false),
          ),
        if (confirmText != null)
          SoButton(
            text: confirmText!,
            type: isDangerous ? SoButtonType.primary : SoButtonType.primary,
            onPressed: onConfirm ?? () => Navigator.of(context).pop(true),
          ),
      ],
    );
  }
}
