import 'package:flutter/material.dart';

class OutlineTextField extends StatelessWidget {
  const OutlineTextField({
    required TextEditingController controller,
    required this.onChanged,
    this.labelText,
    this.hintText,
    super.key,
  }) : _controller = controller;

  final TextEditingController _controller;
  final String? labelText;
  final String? hintText;
  final ValueChanged<String> onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
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
