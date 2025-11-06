import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../../core/config/app_dimensions.dart';

class SoTimePicker extends StatelessWidget {
  final TimeOfDay? selectedTime;
  final ValueChanged<TimeOfDay> onTimeSelected;
  final String? labelText;
  final String? hintText;
  final String? helperText;
  final String? errorText;
  final bool enabled;
  final InputDecoration? decoration;
  final bool use24HourFormat;
  final IconData? prefixIcon;
  final IconData? suffixIcon;

  const SoTimePicker({
    super.key,
    required this.onTimeSelected,
    this.selectedTime,
    this.labelText,
    this.hintText,
    this.helperText,
    this.errorText,
    this.enabled = true,
    this.decoration,
    this.use24HourFormat = true,
    this.prefixIcon = Icons.access_time,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return InkWell(
      onTap: enabled ? () => _selectTime(context) : null,
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
          selectedTime != null
              ? _formatTime(selectedTime!)
              : hintText ?? 'Sélectionner une heure',
          style: selectedTime != null
              ? theme.textTheme.bodyLarge
              : theme.textTheme.bodyLarge?.copyWith(
                  color: theme.hintColor,
                ),
        ),
      ),
    );
  }

  String _formatTime(TimeOfDay time) {
    final now = DateTime.now();
    final dateTime = DateTime(
      now.year,
      now.month,
      now.day,
      time.hour,
      time.minute,
    );

    if (use24HourFormat) {
      return DateFormat('HH:mm').format(dateTime);
    } else {
      return DateFormat('hh:mm a').format(dateTime);
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(
            alwaysUse24HourFormat: use24HourFormat,
          ),
          child: Theme(
            data: Theme.of(context).copyWith(
              colorScheme: Theme.of(context).colorScheme.copyWith(
                    surface: Theme.of(context).cardColor,
                  ),
            ),
            child: child!,
          ),
        );
      },
    );

    if (picked != null && picked != selectedTime) {
      onTimeSelected(picked);
    }
  }
}

