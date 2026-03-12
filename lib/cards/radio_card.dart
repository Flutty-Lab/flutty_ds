import 'package:flutter/material.dart';
import 'package:flutty_ds/dimens.dart';

class RadioCard<T> extends StatelessWidget {
  const RadioCard({
    required this.mode,
    required this.title,
    required this.icon,
    required this.description,
    required this.selectedMode,
    required this.onChanged,
    super.key,
  });

  final T mode;
  final String title;
  final IconData icon;
  final String description;
  final T? selectedMode;
  final ValueChanged<T?> onChanged;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: RadioListTile<T>(
        title: Row(
          children: [
            Icon(icon),
            SizedBox(width: Dimens.halfSpacing),
            Text(title),
          ],
        ),
        subtitle: Text(description),
        value: mode,
        // ignore: deprecated_member_use
        groupValue: selectedMode,
        // ignore: deprecated_member_use
        onChanged: onChanged,
      ),
    );
  }
}
