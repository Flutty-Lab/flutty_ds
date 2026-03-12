import 'package:flutter/material.dart';
import 'package:flutty_ds/dimens.dart';

class ArrowClickableCard extends StatelessWidget {
  ArrowClickableCard({
    required this.onTap,
    required this.label,
    this.icon,
    super.key,
    double? padding,
  }) : padding = padding ?? Dimens.doubleSpacing;

  final String label;
  final IconData? icon;
  final void Function() onTap;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Row(
            children: [
              if (icon != null) ...[
                Icon(icon),
                SizedBox(width: Dimens.standardSpacing),
              ],
              Expanded(child: Text(label)),
              SizedBox(width: Dimens.halfSpacing),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
