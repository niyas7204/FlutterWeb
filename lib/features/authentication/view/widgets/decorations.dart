import 'package:flutter/material.dart';

class WidgetDecorations {
  static InputDecoration authInputDecoration({
    required BuildContext context,
    required IconData prefixIcon,
    required String label,
  }) => InputDecoration(
    labelStyle: Theme.of(context).textTheme.titleMedium,
    hintStyle: Theme.of(context).textTheme.bodyLarge,
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Colors.grey.withValues(alpha: .5),
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        width: 1,
        color: Colors.grey.withValues(alpha: .5),
      ),
      borderRadius: BorderRadius.circular(8),
    ),

    prefixIcon: Icon(prefixIcon, color: Colors.grey),
    label: Text(label),
  );
}
