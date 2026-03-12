import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutty_ds/cards/arrow_clickable_card.dart';
import 'package:flutty_test/golden_utils.dart';

void main() {
  group('ArrowClickableCard Golden Tests', () {
    simpleTestGoldens(
      'ArrowClickableCard',
      widget: SizedBox(
        width: 300,
        child: Column(
          children: [
            ArrowClickableCard(onTap: () {}, label: 'No icon'),
            const SizedBox(height: 8),
            ArrowClickableCard(
              onTap: () {},
              label: 'With icon',
              icon: Icons.settings,
            ),
          ],
        ),
      ),
      height: 140,
    );
  });
}
