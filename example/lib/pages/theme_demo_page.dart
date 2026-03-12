import 'package:flutter/material.dart';
import 'package:flutty_ds/flutty_ds.dart';

class ThemeDemoPage extends StatelessWidget {
  const ThemeDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Theme')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Theme mode'),
            const SizedBox(height: 12),
            ThemeModeSelector(
              themes: FluttyMaterialTheme.themes,
              modes: ThemeMode.values,
              lightTitle: 'Light',
              darkTitle: 'Dark',
              systemTitle: 'System',
            ),
            const SizedBox(height: 24),
            const Text('Palette'),
            const SizedBox(height: 12),
            const ColorPalette(),
          ],
        ),
      ),
    );
  }
}
