import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutty_ds/tokens/flutty_colors.dart';

void main() {
  group('FluttyColors', () {
    test('should have primary color defined', () {
      expect(FluttyColors.primary, isNotNull);
    });

    test('primary color should have correct value', () {
      expect(FluttyColors.primary, const Color(0xff475d91));
    });

    test('primary color should be a valid color', () {
      expect(FluttyColors.primary.toARGB32(), isA<int>());
      expect(FluttyColors.primary.a, greaterThan(0));
    });
  });
}
