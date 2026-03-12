import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutty_ds/dropdown/simple_dropdown.dart';
import 'package:flutty_test/golden_utils.dart';

void main() {
  group('SimpleDropdown Golden Tests', () {
    const items = ['Option 1', 'Option 2', 'Option 3'];

    simpleTestGoldens(
      'SimpleDropdown_with_string_items',
      widget: SizedBox(
        width: 300,
        child: SimpleDropdown<String>(
          value: items.first,
          values: items,
          onChanged: (_) {},
        ),
      ),
      height: 60,
    );

    simpleTestGoldens(
      'SimpleDropdown_with_custom_names',
      widget: SizedBox(
        width: 300,
        child: SimpleDropdown<int>(
          value: 1,
          values: [1, 2, 3],
          buildName: (value) => 'Item $value',
          onChanged: (_) {},
        ),
      ),
      height: 60,
    );
  });
}
