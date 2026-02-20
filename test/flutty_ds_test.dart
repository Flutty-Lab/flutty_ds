import 'package:flutter_test/flutter_test.dart';
import 'package:flutty_ds/flutty_ds.dart';

void main() {
  test('FluttyColors has primary color defined', () {
    expect(FluttyColors.primary.toARGB32(), isNotNull);
  });

  test('FluttySpacing has expected values', () {
    expect(FluttySpacing.xs, 4);
    expect(FluttySpacing.sm, 8);
    expect(FluttySpacing.md, 16);
  });
}
