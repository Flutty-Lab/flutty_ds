import 'package:flutter_test/flutter_test.dart';
import 'package:flutty_ds/tokens/flutty_spacing.dart';

void main() {
  group('FluttySpacing', () {
    test('should have all spacing values defined', () {
      expect(FluttySpacing.xs, 4);
      expect(FluttySpacing.sm, 8);
      expect(FluttySpacing.md, 16);
      expect(FluttySpacing.lg, 24);
      expect(FluttySpacing.xl, 32);
    });

    test('spacing values should be in ascending order', () {
      expect(FluttySpacing.xs < FluttySpacing.sm, isTrue);
      expect(FluttySpacing.sm < FluttySpacing.md, isTrue);
      expect(FluttySpacing.md < FluttySpacing.lg, isTrue);
      expect(FluttySpacing.lg < FluttySpacing.xl, isTrue);
    });

    test('spacing values should be positive', () {
      expect(FluttySpacing.xs, greaterThan(0));
      expect(FluttySpacing.sm, greaterThan(0));
      expect(FluttySpacing.md, greaterThan(0));
      expect(FluttySpacing.lg, greaterThan(0));
      expect(FluttySpacing.xl, greaterThan(0));
    });

    test('spacing values should follow consistent scale', () {
      expect(FluttySpacing.sm, FluttySpacing.xs * 2);
      expect(FluttySpacing.md, FluttySpacing.sm * 2);
      expect(FluttySpacing.lg, FluttySpacing.md + FluttySpacing.sm);
      expect(FluttySpacing.xl, FluttySpacing.md * 2);
    });
  });
}
