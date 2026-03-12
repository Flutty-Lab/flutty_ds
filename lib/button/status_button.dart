import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutty_ds/button/logic/status_buttons_cubit.dart';
import 'package:flutty_ds/theme/color/custom_colors.dart';

enum ActionStatus { none, testing, success, error }

class StatusButton extends StatelessWidget {
  const StatusButton({
    required this.action,
    required this.label,
    this.actionOnInit = false,
    super.key,
  });

  final Future<bool> Function() action;
  final bool actionOnInit;
  final String label;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<StatusButtonCubit>(
      create: (_) =>
          StatusButtonCubit(action: action)..init(actionOnInit: actionOnInit),
      child: BlocBuilder<StatusButtonCubit, ActionStatus>(
        builder: (context, state) {
          return ElevatedButton.icon(
            onPressed: () => context.read<StatusButtonCubit>().onPressed(),
            icon: switch (state) {
              ActionStatus.none => const Icon(Icons.sync),
              ActionStatus.testing => const SizedBox(
                  width: 18,
                  height: 18,
                  child: CircularProgressIndicator(strokeWidth: 2),
                ),
              ActionStatus.success => const Icon(
                  Icons.check_circle,
                  color: CustomColors.success,
                ),
              ActionStatus.error => const Icon(
                  Icons.error,
                  color: CustomColors.error,
                ),
            },
            label: Text(label),
          );
        },
      ),
    );
  }
}
