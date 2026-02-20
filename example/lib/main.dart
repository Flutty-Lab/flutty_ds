import 'package:flutter/material.dart';
import 'package:flutty_ds/flutty_ds.dart';

void main() {
  runApp(const FluttyDsExample());
}

class FluttyDsExample extends StatelessWidget {
  const FluttyDsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutty DS Example',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: FluttyColors.primary),
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('Flutty DS')),
        body: const Padding(
          padding: EdgeInsets.all(FluttySpacing.md),
          child: Text('Hello Flutty DS!'),
        ),
      ),
    );
  }
}
