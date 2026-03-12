import 'package:flutter_test/flutter_test.dart';
import 'package:flutty_ds/dimens.dart';

void main() {
  group('Dimens', () {
    test('should have correct radius values', () {
      expect(Dimens.standardRadius, 8);
      expect(Dimens.doubleRadius, 16);
      expect(Dimens.dialogRadius, 28);
    });

    test('should have correct button size', () {
      expect(Dimens.minimalButtonSize, 48);
    });

    test('should have correct spacing values', () {
      expect(Dimens.halfSpacing, 4);
      expect(Dimens.standardSpacing, 8);
      expect(Dimens.doubleSpacing, 16);
      expect(Dimens.tripleSpacing, 24);
      expect(Dimens.quadrupleSpacing, 32);
    });

    test('spacing values should be in ascending order', () {
      expect(Dimens.halfSpacing < Dimens.standardSpacing, isTrue);
      expect(Dimens.standardSpacing < Dimens.doubleSpacing, isTrue);
      expect(Dimens.doubleSpacing < Dimens.tripleSpacing, isTrue);
      expect(Dimens.tripleSpacing < Dimens.quadrupleSpacing, isTrue);
    });

    test('radius values should be in ascending order', () {
      expect(Dimens.standardRadius < Dimens.doubleRadius, isTrue);
      expect(Dimens.doubleRadius < Dimens.dialogRadius, isTrue);
    });
  });
}
