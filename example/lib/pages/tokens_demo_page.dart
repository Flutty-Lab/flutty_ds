import 'package:flutter/material.dart';
import 'package:flutty_ds/flutty_ds.dart';

class TokensDemoPage extends StatelessWidget {
  const TokensDemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tokens')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('Colors'),
          const SizedBox(height: 12),
          const _ColorTile(name: 'primary', color: FluttyColors.primary),
          const _ColorTile(name: 'secondary', color: FluttyColors.secondary),
          const _ColorTile(name: 'error', color: FluttyColors.error),
          const SizedBox(height: 24),
          const Text('Spacing'),
          const SizedBox(height: 12),
          const _SpacingTile(name: 'xs', value: FluttySpacing.xs),
          const _SpacingTile(name: 'sm', value: FluttySpacing.sm),
          const _SpacingTile(name: 'md', value: FluttySpacing.md),
          const _SpacingTile(name: 'lg', value: FluttySpacing.lg),
        ],
      ),
    );
  }
}

class _ColorTile extends StatelessWidget {
  const _ColorTile({required this.name, required this.color});

  final String name;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      leading: Container(
        width: 28,
        height: 28,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      title: Text(name),
      subtitle: Text(
        '0x${color.toARGB32().toRadixString(16).padLeft(8, '0')}',
      ),
    );
  }
}

class _SpacingTile extends StatelessWidget {
  const _SpacingTile({required this.name, required this.value});

  final String name;
  final double value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(name),
      subtitle: Text(value.toString()),
      trailing: Container(
        width: value,
        height: 8,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(99),
        ),
      ),
    );
  }
}
