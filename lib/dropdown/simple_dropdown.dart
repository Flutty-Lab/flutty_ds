import 'package:flutter/material.dart';
import 'package:flutty_ds/dimens.dart';

class SimpleDropdown<T> extends StatefulWidget {
  SimpleDropdown({
    required this.value,
    required this.onChanged,
    required this.values,
    String Function(T)? buildName,
    super.key,
  }) : buildName = buildName ?? ((value) => value.toString());

  final T value;
  final List<T> values;
  final ValueChanged<T?>? onChanged;
  final String Function(T) buildName;

  @override
  State<SimpleDropdown<T>> createState() => _SimpleDropdownState<T>();
}

class _SimpleDropdownState<T> extends State<SimpleDropdown<T>> {
  late T? currentValue;

  @override
  void initState() {
    super.initState();
    currentValue = widget.value;
  }

  @override
  void didUpdateWidget(covariant SimpleDropdown<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      currentValue = widget.value;
    }
  }

  @override
  Widget build(BuildContext context) => Card(
        margin: EdgeInsets.zero,
        child: DropdownButton<T>(
          padding: EdgeInsets.symmetric(horizontal: Dimens.doubleSpacing),
          borderRadius:
              BorderRadius.all(Radius.circular(Dimens.standardSpacing)),
          isExpanded: true,
          underline: const SizedBox.shrink(),
          value: currentValue,
          onChanged: widget.onChanged != null
              ? (value) {
                  setState(() {
                    currentValue = value;
                  });
                  widget.onChanged!(value);
                }
              : null,
          items: widget.values
              .map(
                (e) => DropdownMenuItem<T>(
                    value: e, child: Text(widget.buildName(e))),
              )
              .toList(),
        ),
      );
}
