import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../so_text_field.dart';

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

  @override
  Widget build(BuildContext context) {
    final strings = AppLocalizations.of(context)!;

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
              return strings.requiredFieldError;
            }
            if (!EmailValidator.validate(value.trim())) {
              return strings.validEmailError;
            }
            return null;
          },
    );
  }
}

