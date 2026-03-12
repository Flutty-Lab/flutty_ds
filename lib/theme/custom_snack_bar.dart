import 'package:flutter/material.dart';
import 'package:flutty_ds/dimens.dart';

final customStackBar = SnackBarThemeData(
  elevation: 2,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(Dimens.standardSpacing),
  ),
  behavior: SnackBarBehavior.floating,
);
