import 'package:flutter/material.dart';
import '../../widgets/so_text_field.dart';

class PasswordField extends StatelessWidget {
  final TextEditingController controller;
  final String? label;
  final String? hint;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final bool enabled;
  final int minLength;

  const PasswordField({
    super.key,
    required this.controller,
    this.label,
    this.hint,
    this.validator,
    this.onChanged,
    this.enabled = true,
    this.minLength = 6,
  });

  @override
  Widget build(BuildContext context) {
    return SoTextField(
      controller: controller,
      label: label,
      hint: hint,
      obscureText: true,
      enabled: enabled,
      onChanged: onChanged,
      prefixIcon: const Icon(Icons.lock_outline),
      validator: validator ??
          (value) {
            if (value == null || value.isEmpty) {
              return 'Mot de passe requis';
            }
            if (value.length < minLength) {
              return 'Minimum $minLength caractères';
            }
            return null;
          },
    );
  }
}
