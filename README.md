# flutty_ds

[![pub package](https://img.shields.io/pub/v/flutty_ds.svg)](https://pub.dev/packages/flutty_ds)
[![pub points](https://img.shields.io/pub/points/flutty_ds)](https://pub.dev/packages/flutty_ds/score)
[![likes](https://img.shields.io/pub/likes/flutty_ds)](https://pub.dev/packages/flutty_ds/score)

Design System for Flutter - tokens, components and UI primitives.

## Installation

```yaml
dependencies:
  flutty_ds: ^0.1.1
```

## Usage

## Quick start

Import:

```dart
import 'package:flutty_ds/flutty_ds.dart';
```

### Tokens

```dart
final primary = FluttyColors.primary;
final padding = EdgeInsets.all(FluttySpacing.md);
```

### Theme

`FluttyThemeWrapper` helps you build a `MaterialApp` with a consistent theme setup.

```dart
FluttyThemeWrapper(
  theme: FluttyMaterialTheme.defaultTheme,
  mode: ThemeMode.system,
  materialAppBuilder: (theme, mode) {
    return MaterialApp(
      themeMode: mode,
      theme: theme.light() ?? ThemeData.light(),
      darkTheme: theme.dark() ?? ThemeData.dark(),
      home: const Scaffold(body: Center(child: Text('Hello'))),
    );
  },
);
```

### Components

```dart
ClickableCard(
  icon: Icons.touch_app,
  onTap: () {},
  body: const Text('Tap me'),
);
```

## Example

See `packages/flutty_ds/example` for a small demo app showcasing tokens, theming and a few components.

## API Documentation

See the [API docs](https://pub.dev/documentation/flutty_ds/latest/) for full documentation.
