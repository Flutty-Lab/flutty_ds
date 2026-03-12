import 'package:flutter/material.dart';

import 'components_demo_page.dart';
import 'theme_demo_page.dart';
import 'tokens_demo_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('flutty_ds demo')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          FilledButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const TokensDemoPage()),
            ),
            child: const Text('Tokens'),
          ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const ThemeDemoPage()),
            ),
            child: const Text('Theme'),
          ),
          const SizedBox(height: 12),
          FilledButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const ComponentsDemoPage()),
            ),
            child: const Text('Components'),
          ),
        ],
      ),
    );
  }
}
