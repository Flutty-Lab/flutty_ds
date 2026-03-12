import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutty_ds/cards/radio_card.dart';
import 'package:flutty_test/golden_utils.dart';

void main() {
  group('RadioCard Golden Tests', () {
    simpleTestGoldens(
      'RadioCard_selected',
      widget: SizedBox(
        width: 300,
        child: RadioCard<String>(
          mode: 'mode1',
          title: 'Test Mode',
          icon: Icons.qr_code_scanner,
          description: 'This is a test mode',
          selectedMode: 'mode1',
          onChanged: (_) {},
        ),
      ),
      height: 80,
    );

    simpleTestGoldens(
      'RadioCard_unselected',
      widget: SizedBox(
        width: 300,
        child: RadioCard<String>(
          mode: 'mode1',
          title: 'Test Mode',
          icon: Icons.settings,
          description: 'This is a test mode',
          selectedMode: 'mode2',
          onChanged: (_) {},
        ),
      ),
      height: 80,
    );
  });
}
