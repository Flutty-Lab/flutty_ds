import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutty_ds/form/outline_text_field.dart';
import 'package:flutty_test/golden_utils.dart';

void main() {
  group('OutlineTextField Golden Tests', () {
    simpleTestGoldens(
      'OutlineTextField_empty',
      widget: SizedBox(
        width: 300,
        child: OutlineTextField(
          controller: TextEditingController(),
          labelText: 'Test Label',
          hintText: 'Enter text here',
          onChanged: (_) {},
        ),
      ),
      height: 60,
    );

    simpleTestGoldens(
      'OutlineTextField_with_text',
      widget: SizedBox(
        width: 300,
        child: OutlineTextField(
          controller: TextEditingController(text: 'Sample Text'),
          labelText: 'Test Label',
          hintText: 'Enter text here',
          onChanged: (_) {},
        ),
      ),
      height: 60,
    );
  });
}
