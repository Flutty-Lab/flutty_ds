import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutty_ds/theme_extension.dart';

void main() {
  group('BuildContextExtensions', () {
    testWidgets('theme extension should return ThemeData', (tester) async {
      late ThemeData capturedTheme;

      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.light(),
          home: Builder(
            builder: (context) {
              capturedTheme = context.theme;
              return const SizedBox();
            },
          ),
        ),
      );

      expect(capturedTheme, isA<ThemeData>());
      expect(capturedTheme.brightness, Brightness.light);
    });

    testWidgets('colorScheme extension should return ColorScheme',
        (tester) async {
      late ColorScheme capturedColorScheme;

      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.light(),
          home: Builder(
            builder: (context) {
              capturedColorScheme = context.colorScheme;
              return const SizedBox();
            },
          ),
        ),
      );

      expect(capturedColorScheme, isA<ColorScheme>());
      expect(capturedColorScheme.brightness, Brightness.light);
    });

    testWidgets('textTheme extension should return TextTheme', (tester) async {
      late TextTheme capturedTextTheme;

      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.light(),
          home: Builder(
            builder: (context) {
              capturedTextTheme = context.textTheme;
              return const SizedBox();
            },
          ),
        ),
      );

      expect(capturedTextTheme, isA<TextTheme>());
      expect(capturedTextTheme.bodyLarge, isNotNull);
    });

    testWidgets('extensions should work with dark theme', (tester) async {
      late ThemeData capturedTheme;
      late ColorScheme capturedColorScheme;

      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.dark(),
          home: Builder(
            builder: (context) {
              capturedTheme = context.theme;
              capturedColorScheme = context.colorScheme;
              return const SizedBox();
            },
          ),
        ),
      );

      expect(capturedTheme.brightness, Brightness.dark);
      expect(capturedColorScheme.brightness, Brightness.dark);
    });
  });
}
