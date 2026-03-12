import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutty_ds/cards/clickable_card.dart';
import 'package:flutty_test/golden_utils.dart';

void main() {
  group('ClickableCard Golden Tests', () {
    simpleTestGoldens(
      'ClickableCard',
      widget: SizedBox(
        width: 300,
        child: Column(
          children: [
            ClickableCard(onTap: () {}, body: const Text('No icon')),
            const SizedBox(height: 8),
            ClickableCard(
              onTap: () {},
              body: const Text('With icon'),
              icon: Icons.settings,
            ),
          ],
        ),
      ),
      height: 140,
    );
  });
}
