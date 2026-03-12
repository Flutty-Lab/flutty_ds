import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutty_ds/dimens.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({
    super.key,
    required this.onChanged,
    this.debounce = 0,
    this.hintLabel,
  });

  final void Function(String) onChanged;
  final int debounce;
  final String? hintLabel;

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _controller = TextEditingController();
  Timer? _debounceTimer;

  @override
  void dispose() {
    _controller.dispose();
    _debounceTimer?.cancel();
    super.dispose();
  }

  void _onSearchChanged(String value) {
    if (_debounceTimer?.isActive ?? false) {
      _debounceTimer!.cancel();
    }

    if (widget.debounce > 0) {
      _debounceTimer = Timer(Duration(milliseconds: widget.debounce), () {
        widget.onChanged(value);
      });
    } else {
      widget.onChanged(value);
    }
  }

  void _clearSearch() {
    _controller.clear();
    _onSearchChanged('');
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      onChanged: _onSearchChanged,
      decoration: InputDecoration(
        hintText: widget.hintLabel,
        prefixIcon: const Icon(Icons.search),
        suffixIcon: _controller.text.isNotEmpty
            ? IconButton(icon: const Icon(Icons.clear), onPressed: _clearSearch)
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(Dimens.standardRadius),
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: Dimens.doubleSpacing),
      ),
    );
  }
}
