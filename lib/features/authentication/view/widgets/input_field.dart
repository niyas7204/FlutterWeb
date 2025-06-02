import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class InputField extends StatelessWidget {
  final IconData preficIcon;
  final String label;
  final TextEditingController controller;
  const InputField({
    super.key,
    required this.preficIcon,
    required this.label,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: Colors.black,
      decoration: InputDecoration(
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

        prefixIcon: Icon(
          preficIcon,
          color: Colors.grey,
         ),
        label: Text(label),
      ),
    );
  }
}
