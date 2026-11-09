import 'package:flutter/material.dart';

class OutlineTextField extends StatelessWidget {
  const OutlineTextField({
    required this.controller,
    required this.onChanged,
    this.labelText,
    this.hintText,
    super.key,
  });

  /// Controller for the text being edited.
  final TextEditingController controller;
  final String? labelText;
  final String? hintText;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Theme.of(context).primaryColor,
          ),
        ),
        labelText: labelText,
        hintText: hintText,
      ),
      onChanged: onChanged,
    );
  }
}
