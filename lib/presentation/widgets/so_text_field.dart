import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../core/config/app_dimensions.dart';

class SoTextField extends StatefulWidget {
  final String? label;
  final String? hint;
  final String? initialValue;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final bool obscureText;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final int? maxLines;
  final int? maxLength;
  final bool enabled;
  final List<TextInputFormatter>? inputFormatters;

  const SoTextField({
    super.key,
    this.label,
    this.hint,
    this.initialValue,
    this.controller,
    this.validator,
    this.onChanged,
    this.keyboardType,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.maxLines = 1,
    this.maxLength,
    this.enabled = true,
    this.inputFormatters,
  });

  @override
  State<SoTextField> createState() => _SoTextFieldState();
}

class _SoTextFieldState extends State<SoTextField> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null) ...[
          Text(
            widget.label!,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: AppDimensions.spacing8),
        ],
        TextFormField(
          controller: widget.controller,
          initialValue: widget.initialValue,
          validator: widget.validator,
          onChanged: widget.onChanged,
          keyboardType: widget.keyboardType,
          obscureText: _obscureText,
          maxLines: widget.obscureText ? 1 : widget.maxLines,
          maxLength: widget.maxLength,
          enabled: widget.enabled,
          inputFormatters: widget.inputFormatters,
          decoration: InputDecoration(
            hintText: widget.hint,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.obscureText
                ? IconButton(
              icon: Icon(
                _obscureText ? Icons.visibility : Icons.visibility_off,
              ),
              onPressed: () {
                setState(() => _obscureText = !_obscureText);
              },
            )
                : widget.suffixIcon,
          ),
        ),
      ],
    );
  }
}