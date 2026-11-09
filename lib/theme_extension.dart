import 'package:flutter/material.dart';

/// Shortcuts to access the ambient theme from a [BuildContext].
extension BuildContextExtensions on BuildContext {
  /// The [ThemeData] of the nearest [Theme] ancestor.
  ThemeData get theme => Theme.of(this);

  /// The [ColorScheme] of the nearest [Theme] ancestor.
  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  /// The [TextTheme] of the nearest [Theme] ancestor.
  TextTheme get textTheme => Theme.of(this).textTheme;
}
