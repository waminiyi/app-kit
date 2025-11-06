import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../core/config/app_dimensions.dart';

class SoDatePicker extends StatelessWidget {
  final DateTime? selectedDate;
  final ValueChanged<DateTime> onDateSelected;
  final DateTime? firstDate;
  final DateTime? lastDate;
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final String? errorText;
  final bool enabled;
  final InputDecoration? decoration;
  final DateFormat? dateFormat;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  const SoDatePicker({
    super.key,
    required this.onDateSelected,
    this.selectedDate,
    this.firstDate,
    this.lastDate,
    this.labelText,
    this.hintText,
    this.helperText,
    this.errorText,
    this.enabled = true,
    this.decoration,
    this.dateFormat,
    this.prefixIcon = Icons.calendar_today,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    final format = dateFormat ?? DateFormat('dd/MM/yyyy');
    final theme = Theme.of(context);

    return InkWell(
      onTap: enabled ? () => _selectDate(context) : null,
      borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
      child: InputDecorator(
        decoration: decoration ??
            InputDecoration(
              labelText: labelText,
              hintText: hintText,
              helperText: helperText,
              errorText: errorText,
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
              suffixIcon: suffixIcon != null
                  ? Icon(suffixIcon)
                  : const Icon(Icons.arrow_drop_down),
              enabled: enabled,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(AppDimensions.radiusSmall),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.spacing16,
                vertical: AppDimensions.spacing12,
              ),
            ),
        child: Text(
          selectedDate != null
              ? format.format(selectedDate!)
              : hintText ?? 'Sélectionner une date',
          style: selectedDate != null
              ? theme.textTheme.bodyLarge
              : theme.textTheme.bodyLarge?.copyWith(
                  color: theme.hintColor,
                ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: firstDate ?? DateTime(1900),
      lastDate: lastDate ?? DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            colorScheme: Theme.of(context).colorScheme.copyWith(
                  surface: Theme.of(context).cardColor,
                ),
          ),
          child: child!,
        );
      },
    );

    if (picked != null && picked != selectedDate) {
      onDateSelected(picked);
    }
  }
}

