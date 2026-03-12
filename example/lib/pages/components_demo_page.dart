import 'package:flutter/material.dart';
import 'package:flutty_ds/flutty_ds.dart';

class ComponentsDemoPage extends StatefulWidget {
  const ComponentsDemoPage({super.key});

  @override
  State<ComponentsDemoPage> createState() => _ComponentsDemoPageState();
}

class _ComponentsDemoPageState extends State<ComponentsDemoPage> {
  final _controller = TextEditingController();
  var _value = 'A';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Components')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          ClickableCard(
            icon: Icons.touch_app,
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('ClickableCard tapped')),
              );
            },
            body: const Text('ClickableCard'),
          ),
          const SizedBox(height: 12),
          OutlineTextField(
            controller: _controller,
            labelText: 'OutlineTextField',
            onChanged: (_) {
              setState(() {});
            },
          ),
          const SizedBox(height: 12),
          SimpleDropdown<String>(
            value: _value,
            values: const ['A', 'B', 'C'],
            onChanged: (value) {
              if (value == null) {
                return;
              }
              setState(() {
                _value = value;
              });
            },
          ),
          const SizedBox(height: 12),
          StatusButton(
            label: 'StatusButton',
            action: () async {
              await Future<void>.delayed(const Duration(milliseconds: 500));
              return _controller.text.trim().isNotEmpty;
            },
          ),
        ],
      ),
    );
  }
}
