import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutty_ds/cards/toggle_card.dart';
import 'package:flutty_test/golden_utils.dart';

void main() {
  group('ToggleCard Golden Tests', () {
    simpleTestGoldens(
      'ToggleCard_active',
      widget: SizedBox(
        width: 300,
        child: ToggleCard(
          title: 'Test Toggle',
          subtitle: 'Toggle description',
          isActive: true,
          onChanged: (_) {},
        ),
      ),
      height: 80,
    );

    simpleTestGoldens(
      'ToggleCard_inactive',
      widget: SizedBox(
        width: 300,
        child: ToggleCard(
          title: 'Test Toggle',
          subtitle: 'Toggle description',
          isActive: false,
          onChanged: (_) {},
        ),
      ),
      height: 80,
    );
  });
}
