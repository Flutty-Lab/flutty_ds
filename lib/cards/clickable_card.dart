import 'package:flutter/material.dart';
import 'package:flutty_ds/dimens.dart';

class ClickableCard extends StatelessWidget {
  ClickableCard({
    required this.onTap,
    required this.body,
    this.icon,
    super.key,
    double? padding,
  }) : padding = padding ?? Dimens.doubleSpacing;

  final Widget body;
  final IconData? icon;
  final void Function() onTap;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        elevation: 2,
        child: Padding(
          padding: EdgeInsets.all(padding),
          child: Row(
            children: [
              if (icon != null) ...[
                Icon(icon),
                SizedBox(width: Dimens.standardSpacing),
              ],
              Expanded(child: body),
            ],
          ),
        ),
      ),
    );
  }
}
