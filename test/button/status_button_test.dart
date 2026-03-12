import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutty_ds/button/status_button.dart';
import 'package:flutty_test/golden_utils.dart';

void main() {
  group('StatusButton Golden Tests', () {
    simpleTestGoldens(
      'StatusButton_initial_state',
      widget: SizedBox(
        width: 200,
        child: StatusButton(label: 'Test Action', action: () async => true),
      ),
      height: 48,
    );
  });
}
