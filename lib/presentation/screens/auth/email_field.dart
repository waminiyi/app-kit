import 'package:flutter/material.dart';
import '../../widgets/so_text_field.dart';

class EmailField extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool enabled;

  const EmailField({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.validator,
    this.onChanged,
    this.enabled = true,
  });

  static bool _isValidEmail(String email) {
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    return emailRegex.hasMatch(email);
  }

  @override
  Widget build(BuildContext context) {
    return SoTextField(
      controller: controller,
      label: label,
      hint: hint,
      keyboardType: TextInputType.emailAddress,
      enabled: enabled,
      onChanged: onChanged,
      prefixIcon: const Icon(Icons.email_outlined),
      validator: validator ??
          (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Email requis';
            }
            if (!_isValidEmail(value.trim())) {
              return 'Email invalide';
            }
            return null;
          },
    );
  }
}
