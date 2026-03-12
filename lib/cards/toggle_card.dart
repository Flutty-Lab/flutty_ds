import 'package:flutter/material.dart';
import 'package:flutty_ds/dimens.dart';

class ToggleCard extends StatelessWidget {
  const ToggleCard({
    required this.title,
    required this.isActive,
    required this.onChanged,
    this.subtitle,
    super.key,
  });

  final String title;
  final bool isActive;
  final ValueChanged<bool> onChanged;
  final String? subtitle;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SwitchListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: Dimens.doubleSpacing),
        title: Text(title),
        subtitle: subtitle != null ? Text(subtitle!) : null,
        value: isActive,
        onChanged: onChanged,
      ),
    );
  }
}
