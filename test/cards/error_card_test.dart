import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutty_ds/cards/error_card.dart';
import 'package:flutty_test/golden_utils.dart';

void main() {
  group('ErrorCard Golden Tests', () {
    simpleTestGoldens(
      'ErrorCard',
      widget: const SizedBox(
        width: 300,
        child: ErrorCard(
          errorMessage:
              'Nice error, with many text Lorem ipsum\nand more text`\nline 3',
        ),
      ),
      height: 150,
    );
  });
}
